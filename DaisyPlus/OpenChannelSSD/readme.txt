https://github.com/Cosmos-OpenSSD/OCSSD-plus/issues
https://github.com/Csoyee/documents/blob/master/OCSSD/cosmos%2B_ocssd.md
https://github.com/Csoyee/documents/issues/5



DaisyPlus OCSSD verification

sudo nvme list
sudo nvme lnvm list
sudo nvme lnvm-diag-bbtbl /dev/nvme0n1 -c 0
sudo nvme lnvm init -d nvme0n1
sudo insmod /lib/modules/4.16.18/kernel/drivers/lightnvm/pblk.ko
sudo nvme lnvm create -d nvme0n1 -b 0 -e 7 -n mydev -t pblk -f
sudo fio test.fio

sudo fio -filename=/dev/mydev -direct=1 -iodepth 1 -thread -rw=randwrite -ioengine=libaio -bs=16k -size=60g -numjobs=1 -group_reporting -name=mytest
sudo fio -filename=/dev/mydev -direct=1 -iodepth 16 -thread -rw=randwrite -ioengine=libaio -bs=16k -size=60g -numjobs=1 -group_reporting -name=mytest