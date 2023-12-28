//////////////////////////////////////////////////////////////////////////////////
// enc_pcie.c for Cosmos OpenSSD
// Copyright (c) 2014 Hanyang University ENC Lab.
// Contributed by Yong Ho Song <yhsong@enc.hanyang.ac.kr>
//                Youngjin Jo <yjjo@enc.hanyang.ac.kr>
//                Sangjin Lee <sjlee@enc.hanyang.ac.kr>
//
// This file is part of Cosmos OpenSSD.
//
// Cosmos OpenSSD is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 3, or (at your option)
// any later version.
//
// Cosmos OpenSSD is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
// See the GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Cosmos OpenSSD; see the file COPYING.
// If not, see <http://www.gnu.org/licenses/>.
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Company: ENC Lab. <http://enc.hanyang.ac.kr>
// Engineer: Sangjin Lee <sjlee@enc.hanyang.ac.kr>
//
// Project Name: Cosmos OpenSSD
// Design Name: Ubuntu block device driver
// File Name: enc_pcie.c
//
// Version: v1.1.0
//
// Description:
//   - Ubuntu block device driver.
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.1.0
//   - Support shutdown command (not ATA command)
//   - Move sector count information from driver to device firmware
//
// * v1.0.0
//   - First draft
//////////////////////////////////////////////////////////////////////////////////

#include <linux/bio.h>
#include <linux/blkdev.h>
#include <linux/errno.h>
#include <linux/fs.h>
#include <linux/genhd.h>
#include <linux/init.h>
#include <linux/interrupt.h>
#include <linux/io.h>
#include <linux/kdev_t.h>
#include <linux/kthread.h>
#include <linux/kernel.h>
#include <linux/mm.h>
#include <linux/module.h>
#include <linux/moduleparam.h>
#include <linux/pci.h>
#include <linux/poison.h>
#include <linux/sched.h>
#include <linux/slab.h>
#include <linux/types.h>
#include <linux/version.h>

//#include <linux/blkpg.h>
//#include <linux/hdreg.h>

#include "enc_pcie.h"

static int devCount = 0;
static int debugVar = 0;

int setup_cmd(struct request_cmd *requestCmd, struct bio *bio, struct ssd_dev_queue *devQueue)
{
	unsigned int physSegments;
	//printk(KERN_DEBUG "setup_cmd\n");
	physSegments = bio_phys_segments(devQueue->queue, bio);
	
	if( (bio->bi_rw & REQ_FLUSH) || !physSegments ) {
		requestCmd->reqIO.Cmd = IDE_COMMAND_FLUSH_CACHE;
		printk(KERN_DEBUG "IDE_COMMAND_FLUSH_CACHE: %x, %x\n", (__u32)(bio->bi_rw & REQ_FLUSH) ,bio_phys_segments(devQueue->queue, bio));
	}
	else {
		if( bio_data_dir(bio) == READ ) {
			requestCmd->reqIO.Cmd = IDE_COMMAND_READ_DMA;
			requestCmd->direction = READ;
		}
		else {
			requestCmd->reqIO.Cmd = IDE_COMMAND_WRITE_DMA;
			requestCmd->direction = !READ;
		}
			
	}
	requestCmd->bio = bio;

	return (int)requestCmd->reqIO.Cmd;
}

int setup_scatter_map(struct ssd_dev *sDev, struct request_cmd *requestCmd, unsigned int physSegments)
{
	struct scatterlist *curSg;
	volatile struct scatter_region *scatterVirtAddr;
	dma_addr_t scatterDMAAddr;
	dma_addr_t dma_addr;
	unsigned int dma_len;
	int i;


	//printk(KERN_DEBUG "setup_scatter_map\n");
/*
	if(physSegments <= (PAGE_SIZE << 5) )
		scatterVirtAddr = (struct scatter_region *)dma_pool_alloc(sDev->smallPool, GFP_ATOMIC, &scatterDMAAddr);
	else if(physSegments <= (PAGE_SIZE << 4) )
		scatterVirtAddr = (struct scatter_region *)dma_pool_alloc(sDev->pagePool, GFP_ATOMIC, &scatterDMAAddr);
	else
		scatterVirtAddr = (struct scatter_region *)dma_pool_alloc(sDev->bigPool, GFP_ATOMIC, &scatterDMAAddr);
*/
	scatterVirtAddr = (volatile struct scatter_region *)dma_alloc_coherent(sDev->dmaDev, 
					PAGE_SIZE, &scatterDMAAddr, GFP_ATOMIC);
	if( !scatterVirtAddr )
	{
		printk(KERN_DEBUG "err_dma_pool_alloc\n");
		return -ENOMEM;
	}
	//printk(KERN_DEBUG "scatter:%x,len:%x\n", (__u32)scatterDMAAddr, physSegments);
	
	/*printk("HostScatterAddrU = 0x%x\n", (__u32)(scatterDMAAddr >> 32));
	printk("HostScatterAddrL = 0x%x\n", (__u32)(scatterDMAAddr));
	printk("HostScatterLen = 0x%x\n", physSegments);*/
	for_each_sg(requestCmd->sgList, curSg, physSegments, i) 
	{
		dma_len = sg_dma_len(curSg);
		dma_addr = sg_dma_address(curSg);
		scatterVirtAddr->DmaAddrU = (__u32)(dma_addr >> 32);
		scatterVirtAddr->DmaAddrL = (__u32)(dma_addr);
		scatterVirtAddr->Reserve = 0x00000000;
		scatterVirtAddr->Length = (__u32)dma_len;
		scatterVirtAddr++;

		/*printk("ScatterRegion[%d].U = 0x%x\n", i, (__u32)(dma_addr >> 32));
		printk("ScatterRegion[%d].L = 0x%x\n", i, (__u32)(dma_addr));
		printk("ScatterRegion[%d].Length = 0x%x\n", i, (__u32)(dma_len));*/

		//printk(KERN_DEBUG "dma_addr:%x,dma_len:%x\n", (__u32)dma_addr, dma_len);
	}

	requestCmd->scatterVirtAddr = scatterVirtAddr;
	requestCmd->reqIO.ScatterAddrU = (__u32)(scatterDMAAddr >> 32);;
	requestCmd->reqIO.ScatterAddrL = (__u32)(scatterDMAAddr);
	requestCmd->reqIO.ScatterLen = physSegments;

	return 0;
}

#define	BIOVEC_PHYS_SEG_MERGEABLE(vec1, vec2)     \
		((bvec_to_phys((vec1)) + (vec1)->bv_len) == bvec_to_phys((vec2)))

#define BIOVEC_NOT_VIRT_MERGEABLE(vec1, vec2)	((vec2)->bv_offset || \
			(((vec1)->bv_offset + (vec1)->bv_len) % PAGE_SIZE))

int setup_scatter_list(struct ssd_dev_queue *devQueue, struct request_cmd *requestCmd, struct bio *bio)
{
	struct ssd_dev *sDev;
	struct bio_vec *curBv, *prevBv;
	struct scatterlist *curSg;
	unsigned int physSegments;
	unsigned int bytesLen = 0;
	unsigned short bi_idx;
	int result = -ENOMEM;

	//printk(KERN_DEBUG "setup_scatter_list\n");
	physSegments = bio_phys_segments(devQueue->queue, bio);
	requestCmd->sgList = (struct scatterlist *)kmalloc(sizeof(struct scatterlist) * physSegments, GFP_ATOMIC);
	if(!requestCmd->sgList )
		goto err_alloc_scatterlist;

	//printk(KERN_DEBUG "kmalloc\n");
	sg_init_table(requestCmd->sgList, physSegments);
	//printk(KERN_DEBUG "sg_init_table\n");

	physSegments = 0;
	prevBv = NULL;
	curSg = NULL;
	bio_for_each_segment(curBv, bio, bi_idx ) {
		if (prevBv && BIOVEC_PHYS_SEG_MERGEABLE(prevBv, curBv)) {
			curSg->length += curBv->bv_len;
		} else
		{
			if(prevBv && BIOVEC_NOT_VIRT_MERGEABLE(prevBv, curBv))
			{
				printk(KERN_DEBUG "BIOVEC_NOT_VIRT_MERGEABLE\n");
				break;
			}
			curSg = curSg ? curSg + 1 : requestCmd->sgList;
			sg_set_page(curSg, curBv->bv_page, curBv->bv_len,
							curBv->bv_offset);
			physSegments++;
		}
		bytesLen += curBv->bv_len;
		prevBv = curBv;
	}
	sg_mark_end(curSg);

	//printk(KERN_DEBUG "sg_mark_end(curSg)\n");

	sDev = devQueue->sDev;
	result = dma_map_sg(sDev->dmaDev, requestCmd->sgList, physSegments, 
				requestCmd->direction == READ ? DMA_FROM_DEVICE : DMA_TO_DEVICE);

	if( result == 0 )
		goto err_dma_map_sg;

	result = setup_scatter_map(sDev, requestCmd, physSegments);
	if( result )
		goto err_setup_scatter_map;

	requestCmd->reqIO.CurSect = (__u32)(bio->bi_sector);
	requestCmd->reqIO.ReqSect = bytesLen >> ENC_SSD_SECTOR_SHIFT;
	bio->bi_sector += (sector_t)(bytesLen >> ENC_SSD_SECTOR_SHIFT);
	bio->bi_idx = bi_idx;

	return 0;

err_setup_scatter_map:
	dma_unmap_sg(sDev->dmaDev, requestCmd->sgList, physSegments,
			requestCmd->direction == READ ? DMA_FROM_DEVICE : DMA_TO_DEVICE);

	printk(KERN_DEBUG "err_setup_scatter_map\n");
err_dma_map_sg:
	kfree(requestCmd->sgList);
	printk(KERN_DEBUG "err_dma_map_sg\n");
err_alloc_scatterlist:
	printk(KERN_DEBUG "err_alloc_scatterlist\n");

	return -ENOMEM;
}


void submit_cmd(struct ssd_dev_queue *devQueue)
{
	dma_addr_t requestDMAAddr;
	struct ssd_dev *sDev;

	//printk(KERN_DEBUG "submit_cmd\n");
	//printk(KERN_DEBUG "cmd issued! \n");
	debugVar++;

	sDev = devQueue->sDev;
	requestDMAAddr = devQueue->requestDMAAddr;
	//writel(0x1, &sDev->pciBar->requestHeadPtrSet);
	writel((__u32)(requestDMAAddr >> 32), &sDev->pciBar->RequestBaseAddrU);
	writel((__u32)(requestDMAAddr), &sDev->pciBar->RequestBaseAddrL);
	devQueue->ReqStart = 1;
	writel(0x1, &sDev->pciBar->ReqStart);
	//printk(KERN_DEBUG "requestHeadPtrSet:%x\n", readl(&sDev->pciBar->requestHeadPtrSet));
}

int make_bio_request(struct ssd_dev_queue *devQueue, struct bio *bio)
{
	volatile struct request_io *requestQueue;
	struct request_cmd *requestCmd;
	//unsigned int requestHead;
	//unsigned int requestTail;
	int result = -EBUSY;

	//printk(KERN_DEBUG "make_bio_request\n");
	//requestHead = devQueue->requestHead;
	//requestTail = devQueue->requestTail;
/*
	if( requestTail != requestHead )
		return result;
*/
	//if( (requestHead + 1) % PCIE_REQUEST_DEPTH == requestTail )
	//	return result;

	if(bio_phys_segments(devQueue->queue, bio) == 0)
	{
		printk(KERN_DEBUG "bio_phys_segments(sDev->queue, bio) == 0\n");
	}

	requestCmd = devQueue->requestList;

	result = setup_cmd(requestCmd, bio, devQueue);

	if( result != IDE_COMMAND_FLUSH_CACHE ) {
		result = setup_scatter_list(devQueue, requestCmd, bio);
		if( result )
			goto err_setup_scatter_list;
	}
	else
		printk(KERN_DEBUG "IDE_COMMAND_FLUSH_CACHE: %d\n", bio_phys_segments(devQueue->queue, bio));
	
	//requestCmd->valid = 1;
	requestQueue = devQueue->requestQueue;
	memcpy((void *)requestQueue, (void *)(&requestCmd->reqIO), sizeof(struct request_io) );
	submit_cmd(devQueue);
	//printk(KERN_DEBUG "requestHead:%x\n", requestHead);

	//requestHead = (requestHead + 1) % PCIE_REQUEST_DEPTH;

	//devQueue->requestHead = requestHead;

	return 0;
err_setup_scatter_list:
	printk(KERN_DEBUG "err_setup_scatter_list\n");
	return -ENOMEM;
}

static void enc_ssd_request(struct request_queue *queue, struct bio *bio)
{
	struct ssd_dev_queue *devQueue;
	int result = -EBUSY;

	//printk(KERN_DEBUG "enc_ssd_request\n");
	devQueue = (struct ssd_dev_queue *)queue->queuedata;

	spin_lock_irq(&devQueue->qLock);

	bio_list_add(&devQueue->bioQueue, bio);

	/*if( bio_list_empty(&devQueue->bioQueue) )
		result = make_bio_request(devQueue, bio);

	if( result ) {
		//printk(KERN_DEBUG "make_bio_request err\n");
		bio_list_add(&devQueue->bioQueue, bio);
		wake_up_process(devQueue->threadRequest);
		
	}
	else if(bio->bi_vcnt != bio->bi_idx)
	{
		printk(KERN_DEBUG "bio remain sect\n");
		bio_list_add_head(&devQueue->bioQueue, bio);
		wake_up_process(devQueue->threadRequest);
	}*/

	spin_unlock_irq(&devQueue->qLock);
	//put_cpu();

}


int make_bio_requests(struct ssd_dev_queue *devQueue)
{
	struct bio *bio;
	//printk(KERN_DEBUG "make_bio_requests\n");
	if(devQueue->ReqStart)
		return 0;

	if(bio_list_peek(&devQueue->bioQueue)){
		spin_lock_irq(&devQueue->qLock);
		bio = bio_list_pop(&devQueue->bioQueue);
		spin_unlock_irq(&devQueue->qLock);
		
		if(make_bio_request(devQueue, bio)) {
			spin_lock_irq(&devQueue->qLock);
			bio_list_add_head(&devQueue->bioQueue, bio);
			spin_unlock_irq(&devQueue->qLock);
			
			return 0;
		}
		else if(bio->bi_vcnt != bio->bi_idx)
		{
			printk(KERN_DEBUG "bio remain sect1\n");

			spin_lock_irq(&devQueue->qLock);
			bio_list_add_head(&devQueue->bioQueue, bio);
			spin_unlock_irq(&devQueue->qLock);
		}
	}
	return 0;
}


void free_scatter_map(struct ssd_dev *sDev, struct request_cmd *requestCmd)
{
	dma_addr_t ScatterAddr;
	//printk(KERN_DEBUG "free_scatter_map\n");

	dma_unmap_sg(sDev->dmaDev, requestCmd->sgList, requestCmd->reqIO.ScatterLen,
		requestCmd->direction == READ ? DMA_FROM_DEVICE : DMA_TO_DEVICE);
/*
	if(requestCmd->reqIO.scatterLen <= (PAGE_SIZE << 5) )
		dma_pool_free(sDev->smallPool, (void *)(requestCmd->scatterVirtAddr), requestCmd->reqIO.scatterAddrL);
	else if(requestCmd->reqIO.scatterLen <= (PAGE_SIZE << 4) )
		dma_pool_free(sDev->pagePool, (void *)(requestCmd->scatterVirtAddr), requestCmd->reqIO.scatterAddrL);
	else+
		dma_pool_free(sDev->bigPool, (void *)(requestCmd->scatterVirtAddr), requestCmd->reqIO.scatterAddrL);
*/
	ScatterAddr = (((dma_addr_t)requestCmd->reqIO.ScatterAddrU) << 32) + (dma_addr_t)(requestCmd->reqIO.ScatterAddrL);
	dma_free_coherent(sDev->dmaDev, PAGE_SIZE,
				 (void *)(requestCmd->scatterVirtAddr), (dma_addr_t)ScatterAddr);

	kfree(requestCmd->sgList);
}


void bio_complete(struct ssd_dev *sDev, struct ssd_dev_queue *devQueue)
{
	struct bio *bio;
	//unsigned int requestTail;
	volatile struct completion_io * completionIO;
	struct request_cmd *requestCmd;

	//printk(KERN_DEBUG "bio_complete\n");
	//requestTail = devQueue->requestTail;

	completionIO = devQueue->completionQueue;

	//printk(KERN_DEBUG ": %x, deadface checking....\n", completionIO->Done);

	if(completionIO->Done == 0xdeadface)
	{
//		printk(KERN_DEBUG "deadface checked!!\n");
		debugVar--;
		requestCmd = devQueue->requestList;

		/*if( requestCmd->valid != 1 )
		{
			printk(KERN_DEBUG "requestCmd->valid!=1\n");
			break;
		}*/

		if( requestCmd->reqIO.Cmd != IDE_COMMAND_FLUSH_CACHE )
			free_scatter_map(sDev, requestCmd);

		bio = requestCmd->bio;
		if(completionIO->CmdStatus != COMMAND_STATUS_SUCCESS )
		{
			printk(KERN_DEBUG "cmdStatus error:%X,%X\n", completionIO->CmdStatus, completionIO->ErrorStatus);
			bio_endio(bio, -EIO);
		}
		else if(bio->bi_vcnt == bio->bi_idx)
		{
			set_bit(BIO_UPTODATE, &bio->bi_flags);
			bio_endio(bio, 0);
		}

		//requestCmd->valid = 0;
		completionIO->Done = 0;
		devQueue->ReqStart = 0;
		//devQueue->requestTail = (requestTail + 1) % PCIE_REQUEST_DEPTH;
	}

	if(bio_list_peek(&devQueue->bioQueue))
		wake_up_process(devQueue->threadRequest);
/*
printk("devQueue->requestTail:%x\n", devQueue->requestTail);
*/
}


static int kthread_make_request(void *data)
{
	/*struct ssd_dev *sDev;
	struct ssd_dev_queue *devQueue;

	devQueue = (struct ssd_dev_queue *)dev_instance;
	sDev = devQueue->sDev;
	spin_lock(&devQueue->qLock);
	bio_complete(sDev, devQueue);
	spin_unlock(&devQueue->qLock);*/
	int prevdebugvar = -1;

	struct ssd_dev *sDev;
	struct ssd_dev_queue *devQueue;
	//printk(KERN_DEBUG "kthread_make_request\n");
	devQueue = (struct ssd_dev_queue *)data;
	sDev = devQueue->sDev;

	while (!kthread_should_stop()) {
		//spin_lock_irq(&devQueue->qLock);
		/////////////////////////////////////
		make_bio_requests(devQueue);

		bio_complete(sDev, devQueue);

		if (prevdebugvar != debugVar)
		{
			prevdebugvar = debugVar;
//			printk(KERN_DEBUG "current num of requests: %d\n", debugVar);
		}
		/////////////////////////////////////
		//spin_unlock_irq(&devQueue->qLock);
		schedule();
		//schedule_timeout(HZ);
	}
	return 0;
}


static irqreturn_t enc_ssd_interrupt(int irq, void *dev_instance)
{
	//printk(KERN_DEBUG "enc_ssd_interrupt\n");
	/*struct ssd_dev *sDev;
	struct ssd_dev_queue *devQueue;

	devQueue = (struct ssd_dev_queue *)dev_instance;
	sDev = devQueue->sDev;
	//printk(KERN_DEBUG "interrupt\n");
	//writel(0x0, &sDev->pciBar->interruptSet);
	spin_lock(&devQueue->qLock);	
	bio_complete(sDev, devQueue);
	spin_unlock(&devQueue->qLock);sect
	//writel(0x1, &sDev->pciBar->interruptSet);*/
	return IRQ_HANDLED;

}

static int enc_ssd_open(struct block_device *bdev, fmode_t mode)
{
	printk(KERN_DEBUG "enc_ssd_open\n");
	return 0;
}

static int enc_ssd_release(struct gendisk *disk, fmode_t mode)
{
	printk(KERN_DEBUG "enc_ssd_release\n");
	return 0;
}

static int enc_ssd_ioctl(struct block_device *bdev, fmode_t mode, unsigned int cmd, unsigned long arg)
{
	printk(KERN_DEBUG "ioctl cmd=%x, arg=%lu\n", cmd, arg);
	return 0;
}

/*
static int enc_ssd_getgeo(struct block_device *bdev, struct hd_geometry *geo)
{
	struct ssd_dev *sDev;

	printk(KERN_DEBUG "enc_ssd_getgeo\n");

	sDev = (struct ssd_dev *)bdev->bd_disk->private_data;

	geo->heads = ENC_SSD_HEADS;
	geo->sectors = ENC_SSD_SECTORS;
	geo->cylinders = ENC_SSD_CYLINDERS;
	return 0;
}
*/

static struct block_device_operations ssd_fops =
{
	.owner   = THIS_MODULE,
	.open    = enc_ssd_open,
	.release = enc_ssd_release,  
	.ioctl   = enc_ssd_ioctl,
	//.getgeo  = enc_ssd_getgeo,
};

static int setup_dma_pool(struct ssd_dev *sDev)
{
	//printk(KERN_DEBUG "setup_dma_pool\n");
	sDev->smallPool = dma_pool_create("small_pool", sDev->dmaDev,
						PAGE_SIZE/2, PAGE_SIZE/2, 0);
	if( !sDev->smallPool )
		goto err_smallPool;

	sDev->pagePool = dma_pool_create("page_pool", sDev->dmaDev,
						PAGE_SIZE, PAGE_SIZE, 0);
	if( !sDev->pagePool )
		goto err_pagePool;

	sDev->bigPool = dma_pool_create("big_pool", sDev->dmaDev,
						PAGE_SIZE*2, PAGE_SIZE*2, 0);
	if( !sDev->bigPool )
		goto err_bigPool;

	return 0;

err_bigPool:
	dma_pool_destroy(sDev->pagePool);
	printk(KERN_DEBUG "err_bigPool\n");
err_pagePool:
	dma_pool_destroy(sDev->smallPool);
	printk(KERN_DEBUG "err_pagePool\n");
err_smallPool:
	printk(KERN_DEBUG "err_smallPool\n");
	return -ENOMEM;
}

static void free_dma_pool(struct ssd_dev *sDev)
{
	//printk(KERN_DEBUG "free_dma_pool\n");
	dma_pool_destroy(sDev->smallPool);
	dma_pool_destroy(sDev->pagePool);
	dma_pool_destroy(sDev->bigPool);
}

static struct ssd_dev_queue* alloc_dev_queues(struct ssd_dev *sDev)
{
	struct ssd_dev_queue *devQueue;

	//printk(KERN_DEBUG "alloc_dev_queues\n");
	devQueue = (struct ssd_dev_queue *)kmalloc(sizeof(struct ssd_dev_queue), GFP_KERNEL);
	if( !devQueue )
		goto err_alloc_devQueue;

	spin_lock_init(&devQueue->qLock);
	//spin_lock_init(&devQueue->rqLock);
	//devQueue->queue->queue_lock = &devQueue->rqLock;
	bio_list_init(&devQueue->bioQueue);

	devQueue->queue = blk_alloc_queue(GFP_KERNEL);
	if( !devQueue->queue )
		goto err_blk_alloc_queue;

	devQueue->queue->queuedata = (void *)devQueue;
	blk_queue_make_request(devQueue->queue, enc_ssd_request);

	spin_lock_irq(devQueue->queue->queue_lock);
	devQueue->queue->queue_flags = QUEUE_FLAG_DEFAULT;
	queue_flag_set(QUEUE_FLAG_NOMERGES, devQueue->queue);
	queue_flag_set(QUEUE_FLAG_NONROT, devQueue->queue);
	//queue_flag_set(QUEUE_FLAG_DISCARD, devQueue->queue);
	spin_unlock_irq(devQueue->queue->queue_lock);

	devQueue->requestList = (struct request_cmd *)kmalloc( sizeof(struct request_cmd)*PCIE_REQUEST_DEPTH, GFP_KERNEL);
	if( !devQueue->requestList )
		goto err_alloc_requestList;


	devQueue->requestQueue = (volatile struct request_io *)dma_alloc_coherent(sDev->dmaDev, 
					sizeof(struct request_io)*PCIE_REQUEST_DEPTH,
					&devQueue->requestDMAAddr, GFP_KERNEL);
	if( !devQueue->requestQueue )
		goto err_alloc_requestQueue;

	devQueue->completionQueue = (volatile struct completion_io *)dma_alloc_coherent(sDev->dmaDev, 
					sizeof(struct completion_io)*PCIE_COMPLETION_DEPTH,
					&devQueue->completionDMAAddr, GFP_KERNEL);
	if( !devQueue->completionQueue )
		goto err_alloc_completionQueue;

	//devQueue->requestHead = 0;
	//devQueue->requestTail = 0;
	//devQueue->completionHead = 0;
	//devQueue->completionTail = 0;
	devQueue->ReqStart = 0;
	
	sDev->devQueue = devQueue;
	devQueue->sDev = sDev;

	//printk(KERN_DEBUG "devQueue->requestDMAAddr:%x\n", devQueue->requestDMAAddr);
	//printk(KERN_DEBUG "devQueue->requestDMAAddr:%x\n", devQueue->completionDMAAddr);

	return devQueue;

err_alloc_completionQueue:
	dma_free_coherent(sDev->dmaDev, sizeof(struct request_io)*PCIE_REQUEST_DEPTH,
				 (void *)(devQueue->requestQueue), devQueue->requestDMAAddr);
	printk(KERN_DEBUG "err_alloc_completionQueue\n");
err_alloc_requestQueue:
	kfree(devQueue->requestList);
	printk(KERN_DEBUG "err_alloc_requestQueue\n");
err_alloc_requestList:
	blk_cleanup_queue(devQueue->queue);
	printk(KERN_DEBUG "err_alloc_requestList\n");
err_blk_alloc_queue:
	kfree(devQueue);
	printk(KERN_DEBUG "err_blk_alloc_queue\n");
err_alloc_devQueue:
	printk(KERN_DEBUG "err_alloc_devQueue\n");

	return NULL;
}

static void free_dev_queues(struct ssd_dev *sDev, struct ssd_dev_queue *devQueue)
{
	//printk(KERN_DEBUG "free_dev_queues\n");
	dma_free_coherent(sDev->dmaDev, sizeof(struct request_io)*PCIE_REQUEST_DEPTH,
				 (void *)(devQueue->requestQueue), devQueue->requestDMAAddr);
	dma_free_coherent(sDev->dmaDev, sizeof(struct completion_io)*PCIE_COMPLETION_DEPTH,
				 (void *)(devQueue->completionQueue), devQueue->completionDMAAddr);

	blk_cleanup_queue(devQueue->queue);
	kfree(devQueue->requestList);
	kfree(devQueue);
}

static int alloc_kthread(struct ssd_dev_queue *devQueue)
{
	//printk(KERN_DEBUG "alloc_kthread\n");
	devQueue->threadRequest = kthread_run(kthread_make_request, (void *)devQueue, ENC_PCIE_DEV_NAME);
	if (IS_ERR(devQueue->threadRequest))
		return PTR_ERR(devQueue->threadRequest);

	return 0;
}

static void free_kthread(struct ssd_dev_queue *devQueue)
{
	//printk(KERN_DEBUG "free_kthread\n");
	kthread_stop(devQueue->threadRequest);
}

static int enc_ssd_init_one(struct ssd_dev *sDev)
{
	struct ssd_dev_queue *devQueue;
	int result = -ENOMEM;
	int sector_count;

	//printk(KERN_DEBUG "enc_ssd_init_one\n");
	result = setup_dma_pool(sDev);
	if( result )
		goto err_setup_dma_pool;

	devQueue = alloc_dev_queues(sDev);
	if( !devQueue )
	{
		result = -ENOMEM;
		goto err_alloc_dev_queues;
	}

	result = alloc_kthread(devQueue);
	if( result )
		goto err_alloc_kthread;

	sDev->disk = alloc_disk(ENC_SSD_MAX_PARTITONS);
	if( !sDev->disk )
	{
		result = -ENOMEM;
		goto err_alloc_disk;
	}

	sDev->disk->major = ENC_SSD_DEV_MAJOR;
	sDev->disk->first_minor = ENC_SSD_MAX_PARTITONS;
	sDev->disk->fops = &ssd_fops;
	sDev->disk->queue = devQueue->queue;
	sDev->disk->private_data = sDev;
	sDev->disk->driverfs_dev = sDev->dmaDev;
	sprintf(sDev->disk->disk_name, "%s%c" , ENC_SSD_DEV_NAME ,'a' + devCount);
	sector_count = readl(&sDev->pciBar->SectorCount);
	
	set_capacity(sDev->disk, sector_count );

	result = request_irq(sDev->irq, enc_ssd_interrupt, IRQF_NOBALANCING|IRQF_DISABLED | IRQF_SHARED, sDev->disk->disk_name, (void *)devQueue);
	//IRQF_NOBALANCING|IRQF_DISABLED | IRQF_SHARED
	if(result < 0)
		goto err_request_irq;

	writel((__u32)(devQueue->requestDMAAddr >> 32), &sDev->pciBar->RequestBaseAddrU);
	writel((__u32)(devQueue->requestDMAAddr), 		&sDev->pciBar->RequestBaseAddrL);
	writel((__u32)(devQueue->completionDMAAddr >> 32), 	&sDev->pciBar->CompletionBaseAddrU);
	writel((__u32)(devQueue->completionDMAAddr), 		&sDev->pciBar->CompletionBaseAddrL);
	writel(0x0, &sDev->pciBar->ReqStart);
	writel(0x0, &sDev->pciBar->Shutdown);

	add_disk(sDev->disk);
	printk(KERN_INFO "enc_ssd_add_one\n");
	devCount++;

	return 0;


err_request_irq:
	put_disk(sDev->disk);
	printk(KERN_DEBUG "err_alloc_disk\n");
err_alloc_disk:
	free_kthread(devQueue);
	printk(KERN_DEBUG "err_request_irq\n");
err_alloc_kthread:
	free_dev_queues(sDev, devQueue);
	printk(KERN_DEBUG "err_alloc_kthread\n");
err_alloc_dev_queues:
	free_dma_pool(sDev);
	printk(KERN_DEBUG "err_alloc_dev_queues\n");
err_setup_dma_pool:
	printk(KERN_DEBUG "err_setup_dma_pool\n");
	return result;

}

static int enc_ssd_remove_one(struct ssd_dev *sDev)
{
	struct ssd_dev_queue *devQueue;
	//printk(KERN_DEBUG "enc_ssd_remove_one\n");
	devQueue = sDev->devQueue;
	
	//let device know driver remove
	writel(0x1, &sDev->pciBar->Shutdown);
	
	//flush_scheduled_work();
	del_gendisk(sDev->disk);
	put_disk(sDev->disk);

	////writel(0x0, &sDev->pciBar->interruptSet);
	free_kthread(devQueue);
	free_dev_queues(sDev, devQueue);
	free_dma_pool(sDev);
	free_irq(sDev->irq, devQueue);

	devCount--;

	printk(KERN_INFO "enc_ssd_remove_one\n");

	return 0;
}


static struct pci_device_id enc_pcie_pci_tbl[] = {
	{ PCI_DEVICE(PCI_VENDOR_ID_XILINX,	PCI_DEVICE_ID_XILINX_PCIE), },
	{0,},
};

MODULE_DEVICE_TABLE(pci, enc_pcie_pci_tbl);



static int __devinit
enc_pcie_init_one(struct pci_dev *pDev, const struct pci_device_id *id)
{
	int result = -ENOMEM;
	int bars;
	struct ssd_dev *sDev;

	//printk(KERN_DEBUG "enc_pcie_init_one\n");
	sDev = (struct ssd_dev *)kmalloc( sizeof(struct ssd_dev), GFP_KERNEL);

	if( !sDev )
		goto err_kmalloc_sDev;

	sDev->pDev = pDev;
	sDev->dmaDev = &pDev->dev;
	//SET_MODULE_OWNER(dev);

	result = pci_enable_device(pDev);
	if( result < 0 )
		goto err_pci_enable_device;

	pci_set_master(pDev);

	bars = pci_select_bars(pDev, IORESOURCE_MEM);
	if(pci_request_selected_regions(pDev, bars, ENC_PCIE_DEV_NAME))
		goto err_out_disable;
	

	pci_enable_msi(pDev);
	pci_set_drvdata(pDev, sDev);
	//dma_set_mask(&pDev->dev, DMA_BIT_MASK(64));
	//dma_set_coherent_mask(&pDev->dev, DMA_BIT_MASK(64));
	result = pci_set_dma_mask(pDev, DMA_BIT_MASK(32));
	result = pci_set_consistent_dma_mask(pDev, DMA_BIT_MASK(32));

	sDev->irq = pDev->irq;
	sDev->pciBar = ioremap(pci_resource_start(pDev, 0), 512);
	if(!sDev->pciBar) {
		result = -ENOMEM;
		goto err_out_free_res;
	}

	printk(KERN_INFO "Found %s device\n", ENC_PCIE_DEV_NAME);

	result = enc_ssd_init_one(sDev);
	if( result )
		goto err_ssd_init_one;

	return 0;

err_ssd_init_one:
	iounmap(sDev->pciBar);
	printk(KERN_DEBUG "err_ssd_init_one\n");

err_out_free_res:
	pci_disable_msi(pDev);
	pci_clear_master(pDev);
	pci_release_regions(pDev);
	printk(KERN_DEBUG "err_out_free_res\n");

err_out_disable:
	pci_disable_device(pDev);
	printk(KERN_DEBUG "err_out_disable\n");

err_pci_enable_device:
	kfree(sDev);
	printk(KERN_DEBUG "err_pci_enable_device\n");

err_kmalloc_sDev:
	return result;
	
}


static void __devexit
enc_pcie_remove_one(struct pci_dev *pDev)
{
	struct ssd_dev *sDev;

	//printk(KERN_DEBUG "enc_pcie_remove_one\n");
	sDev = pci_get_drvdata(pDev);

	enc_ssd_remove_one(sDev);
	pci_disable_msi(pDev);
	iounmap(sDev->pciBar);
	pci_clear_master(pDev);
	//pci_clear_mwi(pDev);
	pci_release_regions(pDev);
	pci_disable_device(pDev);
	kfree(sDev);
	pci_set_drvdata(pDev, NULL);	
	
	printk(KERN_INFO "Remove %s device\n", ENC_PCIE_DEV_NAME);
}
/*




static void enc_pcie_shutdown(struct pci_dev *pDev)
{

	printk(KERN_DEBUG "Shutdown %s device\n", ENC_PCIE_DEV_NAME);
}


static void
enc_pcie_suspend(struct pci_dev *pDev, pm_message_t state)
{
	printk(KERN_DEBUG "Suspend %s device\n", ENC_PCIE_DEV_NAME);
}

static int
enc_pcie_resume(struct pci_dev *pDev)
{
	printk(KERN_DEBUG "Resume %s device\n", ENC_PCIE_DEV_NAME);
	return 0;
}



#define enc_pcie_error_detected NULL
#define enc_pcie_dump_registers NULL
#define enc_pcie_link_reset NULL
#define enc_pcie_slot_reset NULL
#define enc_pcie_error_resume NULL

static struct pci_error_handlers enc_pcie_err_handler = {
	.error_detected	= enc_pcie_error_detected,
	.mmio_enabled	= enc_pcie_dump_registers,
	.link_reset	= enc_pcie_link_reset,

	.slot_reset	= enc_pcie_slot_reset,
	.resume		= enc_pcie_error_resume,
};
*/

static struct pci_driver enc_pcie_pci_driver = {

	.name		= ENC_PCIE_DEV_NAME,
	.id_table	= enc_pcie_pci_tbl,
	.probe		= enc_pcie_init_one,



	.remove		= __devexit_p(enc_pcie_remove_one),
	//.suspend	= enc_pcie_suspend,
	//.resume	= enc_pcie_resume,
	//.shutdown	= enc_pcie_shutdown,

	//.err_handler	= &enc_pcie_err_handler,
};

static int __init
ENC_PCIe_init_module(void)
{
	int result = -EBUSY;
	//printk(KERN_DEBUG "ENC_PCIe_init_module\n");
	printk(KERN_DEBUG "%d version Linux\n", 8 * (unsigned int)sizeof(dma_addr_t));


	result = register_blkdev(ENC_SSD_DEV_MAJOR, ENC_SSD_DEV_NAME);
	if (result < 0)
		goto err_register_blkdev;

	result = pci_register_driver(&enc_pcie_pci_driver);

	if(result)
		goto err_register_driver;
	return result;

err_register_driver:
	unregister_blkdev( ENC_SSD_DEV_MAJOR, ENC_SSD_DEV_NAME );
	printk(KERN_DEBUG "err_register_driver\n");
err_register_blkdev:
	printk(KERN_DEBUG "err_register_blkdev\n");
	return result;

}

static void __exit
ENC_PCIe_cleanup_module(void)
{
	//printk(KERN_DEBUG "ENC_PCIe_cleanup_module\n");
	unregister_blkdev( ENC_SSD_DEV_MAJOR, ENC_SSD_DEV_NAME );
	pci_unregister_driver(&enc_pcie_pci_driver);
}

module_init(ENC_PCIe_init_module);
module_exit(ENC_PCIe_cleanup_module);

MODULE_LICENSE("GPL");
MODULE_VERSION("0.4");

