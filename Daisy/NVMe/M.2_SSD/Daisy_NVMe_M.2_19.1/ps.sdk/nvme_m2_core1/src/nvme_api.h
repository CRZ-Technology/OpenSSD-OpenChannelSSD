/*
 * nvme_api.h
 *
 *  Created on: 2020. 1. 17.
 *      Author: ProDesk
 */

#ifndef SRC_NVME_API_H_
#define SRC_NVME_API_H_

int init_nvme_rp(u64 bar, unsigned int *nvme_storage);
int read_nvme(u64 startLba, u64 DstAddr, u64 nlb);
int write_nvme(u64 startLba, u64 SrcAddr, u64 nlb);

#endif /* SRC_NVME_API_H_ */
