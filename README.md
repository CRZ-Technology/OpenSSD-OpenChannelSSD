# OpenSSD-OpenChannelSSD

CRZ Technoloy released OpenSSD / OpenChannelSSD sources on CosmosPlus, Daisy, DaisyPlus platforms.

CosmosPlus Directory

           - DOC - documents about CosmosPlus

           - OpenChannelSSD - Hynix_NAND   - CosmosPlus_OCSSD_Hynix_8C8W_19.1   - OpenChannelSSD project w/ Hynix 8Channel 8Way NAND module on CosmosPlus board.
                            - Toshiba_NAND - CosmosPlus_OCSSD_Toshiba_8C8W_19.1 - OpenChannelSSD project w/ Toshiba 8Channel 8Way NAND module on CosmosPlus board.
                            - Micron_NAND  - CosmosPlus_OCSSD_Micron_8C2W_19.1  - OpenChannelSSD project w/ Micron 8Channel 2Way NAND module on CosmosPlus board.
                                           - CosmosPlus_OCSSD_Micron_8C8W_19.1  - OpenChannelSSD project w/ Micron 8Channel 8Way NAND module on CosmosPlus board.

           - OpenSSD - Hynix_NAND   - CosmosPlus_OpenSSD_Hynix_8C8W_19.1      - OpenSSD project w/ Hynix 8Channel 8Way NAND module on CosmosPlus board.
                                    - CosmosPlus_OpenSSD_Hynix_8C8W_19.1_ns   - OpenSSD project(multiple namespace) w/ Hynix 8Channel 8Way NAND module on CosmosPlus board.
                     - Toshiba_NAND - CosmosPlus_OpenSSD_Toshiba_8C8W_19.1    - OpenSSD project w/ Toshiba 8Channel 8Way NAND module on CosmosPlus board.
                                    - CosmosPlus_OpenSSD_Toshiba_8C8W_19.1_ns - OpenSSD project(multiple namespace) w/ Toshiba 8Channel 8Way NAND module on CosmosPlus board.
                     - Micron_NAND  - CosmosPlus_OpenSSD_Micron_8C2W_19.1     - OpenSSD project w/ Micron 8Channel 2Way NAND module on CosmosPlus board.
                                    - CosmosPlus_OpenSSD_Micron_8C2W_19.1_ns  - OpenSSD project(multiple namespace) w/ Micron 8Channel 2Way NAND module on CosmosPlus board.
                                    - CosmosPlus_OpenSSD_Micron_8C8W_19.1     - OpenSSD project w/ Micron 8Channel 8Way NAND module on CosmosPlus board.
                                    - CosmosPlus_OpenSSD_Micron_8C8W_19.1_ns  - OpenSSD project(multiple namespace) w/ Micron 8Channel 8Way NAND module on CosmosPlus board.

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
                          - LPDDR4_B - SI5391B - NVMe source on DaisyPlus board(LPDDR4_B & SI5391B), MIG DDR4 DIMM is used for NVMe storage(64GB).
                                     - SI5395P - NVMe source on DaisyPlus board(LPDDR4_B & SI5395P), MIG DDR4 DIMM is used for NVMe storage(64GB).

          - M.2_MIG_PCIe - LPDDR4_A - M.2 / MIG / PCIe test project on DaisyPlus board(LPDDR4_A)      
                         - LPDDR4_B - M.2 / MIG / PCIe test project on DaisyPlus board(LPDDR4_B)

          - OpenChannelSSD - pci.c - patch of drivers/nvme/host/pci.c on linux-kernel-4.16.18 to support OCSSD v1.2
                           - Toshiba_NAND - daisyplus_OCSSD_toshiba_4c8w_lpddr4 - OpenChannelSSD project w/ Tosihba 4Channel 8Way NAND module on DaisyPlus board(LPDDR4_B)
                                          - daisyplus_OCSSD_toshiba_4c8w        - OpenChannelSSD project w/ Toshiba 4Channel 8Way NAND module on DaisyPlus board(LPDDR4_A)

                           - Micron_NAND - daisyplus_OCSSD_micron_4c2w_lpddr4 - OpenChannelSSD project w/ Micron 4Channel 2Way NAND module on DaisyPlus board(LPDDR4_B)
                                         - daisyplus_OCSSD_micron_4c2w        - OpenChannelSSD project w/ Micron 4Channel 2Way NAND module on DaisyPlus board(LPDDR4_A)
                                         - daisyplus_OCSSD_micron_4c8w_lpddr4 - OpenChannelSSD project w/ Micron 4Channel 8Way NAND module on DaisyPlus board(LPDDR4_B)
                                         - daisyplus_OCSSD_micron_4c8w        - OpenChannelSSD project w/ Micron 4Channel 8Way NAND module on DaisyPlus board(LPDDR4_A)
										 
          - OpenSSD - Toshiba_NAND - daisyplus_openssd_toshiba_4c8w_lpddr4 - OpenSSD project w/ Toshiba 4Channel 8Way NAND module on DaisyPlus board(LPDDR4_B)
                                   - daisyplus_openssd_toshiba_4c8w        - OpenSSD project w/ Toshiba 4Channel 8Way NAND module on DaisyPlus board(LPDDR4_A)
                                   - daisyplus_openssd_toshiba_4c8w_ns_lpddr4 - OpenSSD project(multiple namespace) w/ Toshiba 4Channel 8Way NAND module on DaisyPlus board(LPDDR4_B)
                                   - daisyplus_openssd_toshiba_4c8w_ns        - OpenSSD project(multiple namespace) w/ Toshiba 4Channel 8Way NAND module on DaisyPlus board(LPDDR4_A)

                    - Micron_NAND - daisyplus_openssd_micron_4c2w_lpddr4 - OpenSSD project w/ Micron 4Channel 2Way NAND module on DaisyPlus board(LPDDR4_B)
                                  - daisyplus_openssd_micron_4c2w        - OpenSSD project w/ Micron 4Channel 2Way NAND module on DaisyPlus board(LPDDR4_A)
                                  - daisyplus_openssd_micron_4c2w_ns_lpddr4 - OpenSSD project(multiple namespace) w/ Micron 4Channel 2Way NAND module on DaisyPlus board(LPDDR4_B)
                                  - daisyplus_openssd_micron_4c2w_ns        - OpenSSD project(multiple namespace) w/ Micron 4Channel 2Way NAND module on DaisyPlus board(LPDDR4_A)
                                  - daisyplus_openssd_micron_4c8w_lpddr4 - OpenSSD project w/ Micron 4Channel 8Way NAND module on DaisyPlus board(LPDDR4_B)
                                  - daisyplus_openssd_micron_4c8w        - OpenSSD project w/ Micron 4Channel 8Way NAND module on DaisyPlus board(LPDDR4_A)
                                  - daisyplus_openssd_micron_4c8w_ns_lpddr4 - OpenSSD project(multiple namespace) w/ Micron 4Channel 8Way NAND module on DaisyPlus board(LPDDR4_B)
                                  - daisyplus_openssd_micron_4c8w_ns        - OpenSSD project(multiple namespace) w/ Micron 4Channel 8Way NAND module on DaisyPlus board(LPDDR4_A)