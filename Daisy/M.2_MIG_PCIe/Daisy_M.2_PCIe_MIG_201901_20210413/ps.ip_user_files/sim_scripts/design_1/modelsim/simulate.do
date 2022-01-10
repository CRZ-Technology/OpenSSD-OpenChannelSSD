onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xilinx_vip -L xil_defaultlib -L xpm -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_5 -L zynq_ultra_ps_e_vip_v1_0_5 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L gtwizard_ultrascale_v1_7_6 -L in_system_ibert_v1_0_9 -L jtag_axi -L blk_mem_gen_v8_4_3 -L xdma_v4_1_3 -L xlconstant_v1_1_6 -L smartconnect_v1_0 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.design_1 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {design_1.udo}

run -all

quit -force
