# 1 "D:/tmp/daisyplus_micron_new_lpddr4_b_260225_2/ws/daisyplus/zynqmp_fsbl/zynqmp_fsbl_bsp/lop-config.dts"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/tmp/daisyplus_micron_new_lpddr4_b_260225_2/ws/daisyplus/zynqmp_fsbl/zynqmp_fsbl_bsp/lop-config.dts"

/dts-v1/;
/ {
        compatible = "system-device-tree-v1,lop";
        lops {
                lop_0 {
                        compatible = "system-device-tree-v1,lop,load";
                        load = "assists/baremetal_validate_comp_xlnx.py";
                };

                lop_1 {
                    compatible = "system-device-tree-v1,lop,assist-v1";
                    node = "/";
                    outdir = "D:/tmp/daisyplus_micron_new_lpddr4_b_260225_2/ws/daisyplus/zynqmp_fsbl/zynqmp_fsbl_bsp";
                    id = "module,baremetal_validate_comp_xlnx";
                    options = "psu_cortexa53_0 D:/Xilinx/2025.1/Vitis/data/embeddedsw/lib/sw_services/xilffs_v5_4/src D:/tmp/daisyplus_micron_new_lpddr4_b_260225_2/ws/_ide/.wsdata/.repo.yaml";
                };

                lop_2 {
                    compatible = "system-device-tree-v1,lop,assist-v1";
                    node = "/";
                    outdir = "D:/tmp/daisyplus_micron_new_lpddr4_b_260225_2/ws/daisyplus/zynqmp_fsbl/zynqmp_fsbl_bsp";
                    id = "module,baremetal_validate_comp_xlnx";
                    options = "psu_cortexa53_0 D:/Xilinx/2025.1/Vitis/data/embeddedsw/lib/sw_services/xilsecure_v5_5/src D:/tmp/daisyplus_micron_new_lpddr4_b_260225_2/ws/_ide/.wsdata/.repo.yaml";
                };

                lop_3 {
                    compatible = "system-device-tree-v1,lop,assist-v1";
                    node = "/";
                    outdir = "D:/tmp/daisyplus_micron_new_lpddr4_b_260225_2/ws/daisyplus/zynqmp_fsbl/zynqmp_fsbl_bsp";
                    id = "module,baremetal_validate_comp_xlnx";
                    options = "psu_cortexa53_0 D:/Xilinx/2025.1/Vitis/data/embeddedsw/lib/sw_services/xilpm_v6_0/src D:/tmp/daisyplus_micron_new_lpddr4_b_260225_2/ws/_ide/.wsdata/.repo.yaml";
                };

        };
    };
