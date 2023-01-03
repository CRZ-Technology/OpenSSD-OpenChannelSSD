#
#
#
#
#
proc get_static_info {} {
#	puts "Read static information: "
	set filename "pcie_debug_static_info.dat"
        set fh [open $filename w]
	set txn_cnt 8
	set txn_base_addr 0x0001fff0
	
	for {set i 0 } { $i < $txn_cnt } { set i [expr $i +1] } {
		set temp_addr [format %.4X [expr $txn_base_addr + $i]]
#		puts "Read Address 0x{$temp_addr}:"
		set_property CMD.ADDR $temp_addr [get_hw_axi_txns rd_txn_lite] 
		run_hw_axi [get_hw_axi_txns rd_txn_lite]
		#run_hw_axi -quiet [get_hw_axi_txns rd_txn_lite]
		set tdata [get_property DATA [get_hw_axi_txns rd_txn_lite]]
		puts $fh "0x$tdata"
		}
	close $fh
}

proc get_reset_trc {} {
	set filename "pcie_debug_rst_trc.dat"
        set fh [open $filename w]
	#puts "Read reset trace"
	set txn_cnt 8 
	set txn_base_addr 0x00002000
	for {set i 0 } { $i < $txn_cnt } { set i [expr $i +1] } {
		set temp_addr [format %.4X [expr $txn_base_addr + $i]]
		#puts "Read Address 0x{$temp_addr}:"
		set_property CMD.ADDR $temp_addr [get_hw_axi_txns rd_txn_lite]
		run_hw_axi -quiet [get_hw_axi_txns rd_txn_lite]
		set tdata [get_property DATA [get_hw_axi_txns rd_txn_lite]]
		puts $fh "0x$tdata"
		}
	close $fh
}

proc get_ltssm_trc {} {
	set filename "pcie_debug_ltssm_trc.dat"
        set fh [open $filename w]
	#puts "Read ltssm trace"
	set txn_cnt 512 
	set txn_base_addr 0x00001000
	for {set i 0 } { $i < $txn_cnt } { set i [expr $i +1] } {
		set temp_addr [format %.4X [expr $txn_base_addr + $i]]
		#puts "Read LTSSM TRACE 0x{$temp_addr}:"
		set_property CMD.ADDR $temp_addr [get_hw_axi_txns rd_txn_lite]
		run_hw_axi -quiet [get_hw_axi_txns rd_txn_lite]
		set trans [get_property DATA [get_hw_axi_txns rd_txn_lite]]
		
	        #set temp_addr [format %.4X [expr $txn_base_addr + $i +1]]
		#set_property CMD.ADDR $temp_addr [get_hw_axi_txns rd_txn_lite]
		#run_hw_axi -quiet [get_hw_axi_txns rd_txn_lite]
		#set trans_dur [get_property DATA [get_hw_axi_txns rd_txn_lite]]

		puts $fh "0x$trans"  
		#0x$trans_dur"
		}
	close $fh
}

proc get_rxdet_trc { lane_index } {
#	puts "Read RX detection trace"
	set filename "pcie_debug_rxdet_trc.dat"
        set fh [open $filename w]
	set txn_cnt 4 
	set txn_base_addr [expr 0x00003000 + (${lane_index} <<4)]
	
	for {set i 0 } { $i < $txn_cnt } { set i [expr $i +1] } {
		set temp_addr [format %.4X [expr $txn_base_addr + $i]]
		#puts "Read RX Detect trace 0x{$temp_addr}:"
		set_property CMD.ADDR $temp_addr [get_hw_axi_txns rd_txn_lite]
		run_hw_axi -quiet [get_hw_axi_txns rd_txn_lite]
		set tdata [get_property DATA [get_hw_axi_txns rd_txn_lite]]
		puts $fh "0x$tdata"
		}
	close $fh
}

proc get_other_info {} {
#	puts "Read RX detection trace"
	set filename "pcie_debug_info_trc.dat"
        set fh [open $filename w]
	set txn_cnt 3 
	set txn_base_addr 0x00004000
       
	for {set i 0 } { $i < $txn_cnt } { set i [expr $i +1] } {
		set temp_addr [format %.4X [expr $txn_base_addr + $i]]
		#puts "Read RX Detect trace 0x{$temp_addr}:"
		set_property CMD.ADDR $temp_addr [get_hw_axi_txns rd_txn_lite]
		run_hw_axi -quiet [get_hw_axi_txns rd_txn_lite]
		set tdata [get_property DATA [get_hw_axi_txns rd_txn_lite]]
		puts $fh "0x$tdata"
		}
	close $fh
}


set myread [llength [get_hw_axi_txns rd_txn_lite] ]
if { $myread == 0 } {
	create_hw_axi_txn rd_txn_lite [get_hw_axis hw_axi_1] -address 0001fff0 -type read
	}

get_static_info
get_reset_trc
#get_rxdet_trc 1
get_other_info 
get_ltssm_trc


set fp [open "pcie_debug_info_trc.dat" r]
set count 0
while {[gets $fp line]!=-1} {
    incr count
        if {$count==1} {
          set temp0 [expr $line & 0xFF]
          set phy_lane [expr int($temp0)] 
          #[format "%02x" $temp0]
          puts "phy_lane : $phy_lane"	 
	       }
        if {$count==2} {
          set temp1 [expr $line & 0xff]
          set width [format "%02x" $temp1]
          puts "width : $width"   
        }
        if {$count==3} {
          set temp2 [expr $line & 0xFF]
          set speed [format "%02x" $temp2]
          puts "speed : $speed"      
        }       
     }
close $fp

#	puts "Read RX detection trace"
	set filename "rxdet.dat"
 set fh [open $filename w]
	set txn_cnt 4 
 set j 0
while { $j < $phy_lane } {
  for {set i 0 } { $i < $txn_cnt } { set i [expr $i +1] } {
  	set txn_base_addr [expr 0x00003000 + ($j <<4)]
	 	set temp_addr [format %.4X [expr $txn_base_addr + $i]]
	 	#puts "Read RX Detect trace 0x{$temp_addr}:"
	 	set_property CMD.ADDR $temp_addr [get_hw_axi_txns rd_txn_lite]
	 	run_hw_axi -quiet [get_hw_axi_txns rd_txn_lite]
	 	set tdata [get_property DATA [get_hw_axi_txns rd_txn_lite]]
	 	puts $fh "0x$tdata"
	 }
  incr j
}

	close $fh
