# sudo nvme zns id-ctrl /dev/nvme0n1
NVMe ZNS Identify Controller:
zasl    : 0

# sudo nvme zns id-ns /dev/nvme0n1
ZNS Command Set Identify Namespace:
zoc     : 0
ozcs    : 0
mar     : 0xf
mor     : 0xf
rrl     : 0
frl     : 0
rrl1    : 0
rrl2    : 0
rrl3    : 0
frl1    : 0
frl2    : 0
frl3    : 0
lbafe  0: zsze:0x200000 zdes:0 (in use)

# sudo nvme zns report-zones /dev/nvme0n1
nr_zones: 16
SLBA: 0          WP: 0          Cap: 0x200000   State: 0x10 Type: 0x2  Attrs: 0    AttrsInfo: 0
SLBA: 0x200000   WP: 0x200000   Cap: 0x200000   State: 0x10 Type: 0x2  Attrs: 0    AttrsInfo: 0
SLBA: 0x400000   WP: 0x400000   Cap: 0x200000   State: 0x10 Type: 0x2  Attrs: 0    AttrsInfo: 0
SLBA: 0x600000   WP: 0x600000   Cap: 0x200000   State: 0x10 Type: 0x2  Attrs: 0    AttrsInfo: 0
SLBA: 0x800000   WP: 0x800000   Cap: 0x200000   State: 0x10 Type: 0x2  Attrs: 0    AttrsInfo: 0
SLBA: 0xa00000   WP: 0xa00000   Cap: 0x200000   State: 0x10 Type: 0x2  Attrs: 0    AttrsInfo: 0
SLBA: 0xc00000   WP: 0xc00000   Cap: 0x200000   State: 0x10 Type: 0x2  Attrs: 0    AttrsInfo: 0
SLBA: 0xe00000   WP: 0xe00000   Cap: 0x200000   State: 0x10 Type: 0x2  Attrs: 0    AttrsInfo: 0
SLBA: 0x1000000  WP: 0x1000000  Cap: 0x200000   State: 0x10 Type: 0x2  Attrs: 0    AttrsInfo: 0
SLBA: 0x1200000  WP: 0x1200000  Cap: 0x200000   State: 0x10 Type: 0x2  Attrs: 0    AttrsInfo: 0
SLBA: 0x1400000  WP: 0x1400000  Cap: 0x200000   State: 0x10 Type: 0x2  Attrs: 0    AttrsInfo: 0
SLBA: 0x1600000  WP: 0x1600000  Cap: 0x200000   State: 0x10 Type: 0x2  Attrs: 0    AttrsInfo: 0
SLBA: 0x1800000  WP: 0x1800000  Cap: 0x200000   State: 0x10 Type: 0x2  Attrs: 0    AttrsInfo: 0
SLBA: 0x1a00000  WP: 0x1a00000  Cap: 0x200000   State: 0x10 Type: 0x2  Attrs: 0    AttrsInfo: 0
SLBA: 0x1c00000  WP: 0x1c00000  Cap: 0x200000   State: 0x10 Type: 0x2  Attrs: 0    AttrsInfo: 0
SLBA: 0x1e00000  WP: 0x1e00000  Cap: 0x200000   State: 0x10 Type: 0x2  Attrs: 0    AttrsInfo: 0

# echo "hello world" | sudo nvme zns zone-append /dev/nvme0n1 -z 16384
Success appended data to LBA 0

# echo "goodbye world" | sudo nvme zns zone-append /dev/nvme0n1 -z 16384
Success appended data to LBA 4

# sudo nvme read /dev/nvme0n1 -s 0 -c 3 -z 16384
hello world
read: Success

# sudo nvme read /dev/nvme0n1 -s 4 -c 3 -z 16384
goodbye world
read: Success