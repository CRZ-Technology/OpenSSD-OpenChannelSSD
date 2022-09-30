# OpenSSD-OpenChannelSSD

CRZ Technoloy released OpenSSD / OpenChannelSSD sources on CosmosPlus, Daisy, DaisyPlus platforms.

CosmosPlus Directory

           - DOC - documents about CosmosPlus

           - OpenChannelSSD - Hynix_NAND   - OpenChannelSSD source for Hynix NAND module on CosmosPlus board.
                            - Toshiba_NAND - OpenChannelSSD source for Toshiba NAND module on CosmosPlus board.
                            - Micron_NAND  - OpenChannelSSD source for Micron NAND module on CosmosPlus board.

           - OpenSSD - Hynix_NAND   - OpenSSD source for Hynix NAND module on CosmosPlus board.
                     - Toshiba_NAND - OpenSSD source for Toshiba NAND module on CosmosPlus board.
                     - Micron_NAND  - OpenSSD source for Micron NAND module on CosmosPlus board.


Daisy Directory

           - DOC - documents about Daisy

           - NVMe - LPDDR4 - NVMe source on Daisy board, PS LPDDR4 DRAM is used for NVMe storage(1GB).
                  - MIG    - NVMe source on Daisy board, MIG DDR4 DIMM is used for NVMe storage(64GB).
		  
           - M.2_MIG_PCIe - M.2 / MIG / PCIe test project on Daisy board
		  
		  
DaisyPlus Directory

          - DOC - documents about DaisyPlus

          - NVMe - LPDDR4 - LPDDR4_A - NVMe source on DaisyPlus board(LPDDR4_A), PS LPDDR4 DRAM is used for NVMe storage(1GB).
                          - LPDDR4_B - NVMe source on DaisyPlus board(LPDDR4_B), PS LPDDR4 DRAM is used for NVMe storage(1GB).
                 - MIG    - LPDDR4_A - NVMe source on DaisyPlus board(LPDDR4_A), MIG DDR4 DIMM is used for NVMe storage(64GB).
                          - LPDDR4_B - NVMe source on DaisyPlus board(LPDDR4_B), MIG DDR4 DIMM is used for NVMe storage(64GB).

          - M.2_MIG_PCIe - LPDDR4_A - M.2 / MIG / PCIe test project on DaisyPlus board(LPDDR4_A)      
                         - LPDDR4_B - M.2 / MIG / PCIe test project on DaisyPlus board(LPDDR4_B)

          - OpenChannelSSD - pci.c - patch of drivers/nvme/host/pci.c on linux-kernel-4.16.18 to support OCSSD v1.2
                           - Micron_NAND - daisyplus_OCSSD_micron_4c2w_lpddr4 - OpenChannelSSD project w/ Micron 4Channel 2Way NAND module on DaisyPlus board(LPDDR4_B)
                                         - daisyplus_OCSSD_micron_4c2w        - OpenChannelSSD project w/ Micron 4Channel 2Way NAND module on DaisyPlus board(LPDDR4_A)

          - OpenSSD - Toshiba_NAND - LPDDR4_A - OpenSSD project w/ Toshiba NAND module on DaisyPlus board(LPDDR4_A)      
                                   - LPDDR4_B - OpenSSD project w/ Toshiba NAND module on DaisyPlus board(LPDDR4_B)
								   
                    - Micron_NAND - daisyplus_openssd_micron_4c2w_lpddr4 - OpenSSD project w/ Micron 4Channel 2Way NAND module on DaisyPlus board(LPDDR4_B)
                                  - daisyplus_openssd_micron_4c2w        - OpenSSD project w/ Micron 4Channel 2Way NAND module on DaisyPlus board(LPDDR4_A)
                                  - daisyplus_openssd_micron_4c2w_ns_lpddr4 - OpenSSD project(multiple namespace) w/ Micron 4Channel 2Way NAND module on DaisyPlus board(LPDDR4_B)
                                  - daisyplus_openssd_micron_4c2w_ns        - OpenSSD project(multiple namespace) w/ Micron 4Channel 2Way NAND module on DaisyPlus board(LPDDR4_A)