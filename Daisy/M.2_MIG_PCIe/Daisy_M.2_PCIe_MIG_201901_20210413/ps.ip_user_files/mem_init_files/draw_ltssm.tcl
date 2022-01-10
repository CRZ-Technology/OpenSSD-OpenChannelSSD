#
#
#
#
# draw_ltssm.tcl
# draw the base state transition diagram of LTSSM

package require Tcl	8.5
package require Tk
#package require Ttk

wm withdraw .
eval destroy [winfo child .]
set w .item
catch {destroy $w}

toplevel $w
wm title $w "Xilinx PCIE EoU Debugger"

wm iconname $w "Items"
#positionWindow $w
set c $w.frame.c

label $w.msg -wraplength 5i -justify center -text "Link Training Status and State Machine (LTSSM)"
pack $w.msg -side bottom

frame $w.frame
pack $w.frame -side top -fill both -expand yes

canvas $c -scrollregion {0c 0c 15c 15c} -width 15c -height 15c \
	-relief sunken -borderwidth 2 \
	-xscrollcommand "$w.frame.hscroll set" \
	-yscrollcommand "$w.frame.vscroll set"
scrollbar $w.frame.vscroll -command "$c yview"
scrollbar $w.frame.hscroll -orient horiz -command "$c xview"

grid $c -in $w.frame \
    -row 0 -column 0 -rowspan 1 -columnspan 1 -sticky news
grid $w.frame.vscroll \
    -row 0 -column 1 -rowspan 1 -columnspan 1 -sticky news
grid $w.frame.hscroll \
    -row 1 -column 0 -rowspan 1 -columnspan 1 -sticky news
grid rowconfig    $w.frame 0 -weight 1 -minsize 0
grid columnconfig $w.frame 0 -weight 1 -minsize 0

set font1 {Helvetica 12}
set font2 {Helvetica 24 bold}
if {[winfo depth $c] > 1} {
    set blue DeepSkyBlue3
    set red red
    set bisque bisque3
    set green SeaGreen3
} else {
    set blue black
    set red black
    set bisque black
    set green black
}

#Create transition diagram
#
set st_0 [$c create oval 6c 1c 9c 2c  -tags item]
$c create text 7.5c 1.3c -text "Detect" -anchor n

#$c itemconfigure $detect_0_st -fill green

set st_1 [$c create oval 6c 3c 9c 4c  -tags item]
$c create text 7.5c 3.3c -text "Polling" -anchor n

set st_2 [$c create oval 6c 5c 9c 6c  -tags item]
$c create text 7.5c 5.3c -text "Configuration" -anchor n

set st_3 [$c create oval 6c 8c 9c 9c  -tags item]
$c create text 7.5c 8.3c -text "L0" -anchor n

set st_4 [$c create oval 6c 11c 9c 12c  -tags item]
$c create text 7.5c 11.3c -text "L0s" -anchor n

set st_6 [$c create oval 2c 9c 5c 10c  -tags item]
$c create text 3.5c 9.3c -text "L1" -anchor n

######
set st_7 [$c create oval 12.5c 3c 15.5c 4c  -tags item]
$c create text 14c 3.3c -text "Disabled" -anchor n

set st_8 [$c create oval 12.5c 5c 15.5c 6c  -tags item]
$c create text 14c 5.3c -text "Hot reset" -anchor n

set st_9 [$c create oval 12.5c 7c 15.5c 8c  -tags item]
$c create text 14c 7.3c -text "Loopback" -anchor n

set st_a [$c create oval 10c 11c 13c 12c  -tags item]
$c create text 11.5c 11.3c -text "R.Lock" -anchor n

set st_b [$c create oval 10c 13c 13c 14c  -tags item]
$c create text 11.5c 13.3c -text "R.Speed" -anchor n

set st_c [$c create oval 16c 11c 19c 12c  -tags item]
$c create text 17.5c 11.3c -text "R.Cfg" -anchor n

set st_e [$c create oval 21c 11c 24c 12c  -tags item]
$c create text 22.5c 11.3c -text "R.Idle" -anchor n

set st_d [$c create oval 16c 14c 19c 15c  -tags item]
$c create text 17.5c 14.3c -text "R.Eq" -anchor n




# create transistion links
set lnk_0_1 [$c create line 7c 2c 7c 3c -arrow last -tags item -width 0.3m]

set lnk_1_0 [$c create line 8c 2c 8c 3c -arrow first -tags item -width 0.3m]
set lnk_1_2 [$c create line 7.5c 4c 7.5c 5c -arrow last -tags item -width 0.3m]

set lnk_2_0 [$c create line 6c 5.5c 5c 3.5c 6.2c 1.7c  -arrow last -tags item -smooth on -width 0.3m]
set lnk_2_3 [$c create line 7.5c 6c 7.5c 8c -arrow last -tags item -width 0.3m]
set lnk_2_9 [$c create line 8.8c 5.7c 12.7c 7.2c -arrow last -tags item -width 0.3m]
set lnk_2_a [$c create line 8.4c 5.85c 10.6c 11.2c -arrow last -tags item -width 0.3m]
set lnk_a_2 [$c create line 8.6c 5.65c 11c 11.1c -arrow first -tags item -width 0.3m]

set lnk_3_4 [$c create line 7c 9c 7c 11c -arrow last -tags item -width 0.3m]
#set lnk_3_5 [$c create line 6c 7.5c 5c 7.5c -arrow last -tags item -width 0.3m]
set lnk_3_6 [$c create line 6.2c 8.7c 4.7c 9.3c -arrow last -tags item -width 0.3m]
set lnk_3_a [$c create line 8.8c 8.8c 10.3c 11.3c -arrow last -tags item -width 0.3m]

set lnk_4_3 [$c create line 8c 11c 8c 9c -arrow last -tags item -width 0.3m]
set lnk_4_a [$c create line 9c 11.5c 10c 11.5c -arrow last -tags item -width 0.3m]

#set lnk_5_0 [$c create line 3.5c 7c 3c 3.5c 6c 1.5c  -arrow last -tags item -smooth on -width 0.3m]
set lnk_6_a [$c create line 3.5c 10c 7.5c 14c 10.5c 12c  -arrow last -tags item -smooth on -width 0.3m]

set lnk_2_7 [$c create line 8.5c 5.15c 12.7c 3.7c -arrow last -tags item -width 0.3m]
set lnk_7_0 [$c create line 12.7c 3.2c 9c 1.5c -arrow last -tags item -width 0.3m]

set lnk_8_0 [$c create line 12.7c 5.3c 8.8c 1.6c -arrow last -tags item -width 0.3m]
set lnk_9_0 [$c create line 13.c 7.2c 8.6c 1.7c -arrow last -tags item -width 0.3m]

set lnk_a_0 [$c create line 11.7c 11c 8.6c 1.76c -arrow last -tags item -width 0.3m]
set lnk_e_3 [$c create line 8.9c 8.6c 21.5c 11.1c -arrow first -tags item -width 0.3m]
set lnk_e_9 [$c create line 21.8c 11c 14.8c 7.9c -arrow last -tags item -width 0.3m]
set lnk_e_8 [$c create line 22.2c 11c 22.2c 5.4c 15.4c 5.4c -arrow last -tags item -width 0.3m]
set lnk_e_7 [$c create line 22.6c 11c 22.6c 3.4c 15.4c 3.4c -arrow last -tags item  -width 0.3m]
set lnk_e_2 [$c create line 21.9c 11c 21.9c 7.8c 9c  5.4c  -arrow last -tags item -width 0.3m]
set lnk_e_0 [$c create line 23c 11.1c 23c 0.8c 8.5c 0.8c 8.5c 1.2c -arrow last -tags item -width 0.3m]

set lnk_c_b [$c create line 16.2c 11.8c 13c 13.5c -arrow last -tags item -width 0.3m]
set lnk_a_b [$c create line 11.3c 12c 11.3c 13c -arrow last -tags item -width 0.3m]
set lnk_b_a [$c create line 11.8c 13c 11.8c 12c -arrow last -tags item -width 0.3m]
set lnk_d_b [$c create line 16c 14.6c 11.5c 14.6c 11.5c 14c -arrow last -tags item -width 0.3m]
set lnk_d_a [$c create line 16.4c 14.2c 12.3c 11.85c -arrow last -tags item -width 0.3m]
set lnk_a_d [$c create line 11.8c 12c 16c 14.5c -arrow last -tags item -width 0.3m]
set lnk_a_c [$c create line 12.8c 11.7c 16.2c 11.7c -arrow last -tags item -width 0.3m]
set lnk_c_0 [$c create line 17.9c 11.1c 17.9c 1.3c 8.8c 1.3c  -arrow last -tags item -width 0.3m]
set lnk_c_2 [$c create line 17.5c 11c 17.5c 7.5c 8.9c  5.6c  -arrow last -tags item -width 0.3m]
set lnk_c_e [$c create line 19c 11.5c 21.1c 11.5c -arrow last -tags item -width 0.3m]
set lnk_b_0 [$c create line 10c 13.5c 1.2c 13.5c  1.2c 1.5c 6c 1.5c -arrow last -tags item -width 0.3m]
set lnk_e_a [$c create line 22c 12c 22c 14.5c 12.6c 11.75c -arrow last -tags item -width 0.3m]


# ltssm state <-> id mapping  
set ltssm_st {
0   {grp 0 visited 0 name "Detect.Quiet"}
1   {grp 0 visited 0 name "Detect.Active"}
2   {grp 1 visited 0 name "Polling.Active"}
3   {grp 1 visited 0 name "Polling.Compliance"}
4   {grp 1 visited 0 name "Polling.Configuration"}
5   {grp 2 visited 0 name "Configuration.Linkwidth.Start"}
6   {grp 2 visited 0 name "Configuration.Linkwidth.Accept"}
7   {grp 2 visited 0 name "Configuration.Lanenum.Accept"}
8   {grp 2 visited 0 name "Configuration.Lanenum.Wait"}
9   {grp 2 visited 0 name "Configuration.Complete"}
10  {grp 2 visited 0 name "Configuration.Idle"}
11  {grp a visited 0 name "Recovery.RcvrLock"}
12  {grp b visited 0 name "Recovery.Speed"}
13  {grp c visited 0 name "Recovery.RcvrCfg"}
14  {grp e visited 0 name "Recovery.Idle"}
16  {grp 3 visited 0 name "L0"}
17  {grp 4 visited 0 name "Rx_L0s.Entry"}
18  {grp 4 visited 0 name "Rx_L0s.Idle"}
19  {grp 4 visited 0 name "Rx_L0s.FTS"}
20  {grp 4 visited 0 name "Tx_L0s.Entry"}
21  {grp 4 visited 0 name "Tx_L0s.Idle"}
22  {grp 4 visited 0 name "Tx_L0s.FTS"}
23  {grp 6 visited 0 name "L1.Entry"}
24  {grp 6 visited 0 name "L1.Idle"}
25  {grp 5 visited 0 name "L2.Idle"}
26  {grp 5 visited 0 name "L2.TransmitWake"}
32  {grp 7 visited 0 name "DISABLED"}
33  {grp 9 visited 0 name "LOOPBACK_ENTRY_MASTER"}
34  {grp 9 visited 0 name "LOOPBACK_ACTIVE_MASTER"}
35  {grp 9 visited 0 name "LOOPBACK_EXIT_MASTER"}
36  {grp 9 visited 0 name "LOOPBACK_ENTRY_SLAVE"}
37  {grp 9 visited 0 name "LOOPBACK_ACTIVE_SLAVE"}
38  {grp 9 visited 0 name "LOOPBACK_EXIT_SLAVE"}
39  {grp 8 visited 0 name "HOT_RESET"}
40  {grp d visited 0 name "RECOVERY_EQUALIZATION_PHASE0"}
41  {grp d visited 0 name "RECOVERY_EQUALIZATION_PHASE1"}
42  {grp d visited 0 name "RECOVERY_EQUALIZATION_PHASE2"}
43  {grp d visited 0 name "RECOVERY_EQUALIZATION_PHASE3"}
}     
      
set lnk_occurance {
lnk_0_1 0
lnk_1_0 0
lnk_1_2 0
lnk_2_0 0
lnk_2_3 0
lnk_2_9 0
lnk_2_a 0
lnk_a_2 0
lnk_3_4 0
lnk_3_6 0
lnk_3_a 0
lnk_4_3 0
lnk_4_a 0
lnk_6_a 0
lnk_2_7 0
lnk_7_0 0
lnk_8_0 0
lnk_9_0 0
lnk_a_0 0
lnk_e_3 0
lnk_e_9 0
lnk_c_b 0
lnk_a_b 0
lnk_b_a 0
lnk_d_b 0
lnk_d_a 0
lnk_a_d 0
lnk_a_c 0
lnk_c_0 0
lnk_c_2 0
lnk_c_e 0
lnk_e_8 0
lnk_e_7 0
lnk_e_0 0
lnk_e_2 0
lnk_b_0 0
lnk_e_a 0
}
#lnk_3_5 0
#lnk_5_0 0

set lnk_cord {
lnk_0_1 {6.8c 2c}  
lnk_1_0 {8.2c 2.6c} 
lnk_1_2 {7.3c 4c} 
lnk_2_0 {6c 5.0c} 
lnk_2_3 {7.3c 7.5c} 
lnk_2_7 {12.3c 3.4c} 
lnk_2_9 {12.3c 7c} 
lnk_a_2 {9c 6c}
lnk_2_a {10.6c 10.6c}
lnk_3_4 {6.8c 10.6c} 
lnk_3_6 {4.8c 8.8c} 
lnk_3_a {10.2c 10.5c} 
lnk_4_3 {8.2c 9.1c} 
lnk_4_a {9.7c 11.1c} 
lnk_6_a {9.7c 12c} 
lnk_7_0 {9.6c 1.4c} 
lnk_8_0 {9.6c 2c} 
lnk_9_0 {9.4c 2.3c} 
lnk_a_0 {9.02c 2.5c} 
lnk_e_3 {9.3c 8.3c}
lnk_e_9 {15c 8c} 
lnk_c_b {13.2c 13.5c}
lnk_a_b {11.1c 12.5c}
lnk_b_a {11.7c 12.1c}
lnk_d_b {11.3c 14c}
lnk_d_a {13.2c 12c}
lnk_a_d {14.6c 13.7c}
lnk_a_c {15.8c 11.3c}
lnk_c_0 {9.1c 0.95c}
lnk_c_2 {9.45c 5.35c}
lnk_c_e {20.9c 11.65c}
lnk_e_8 {15.55c 4.9c}
lnk_e_7 {15.55c 2.9c}
lnk_e_0 {8.8c 0.45c}
lnk_e_2 {9.2c 5c}
lnk_b_0 {6c 1.1c}
lnk_e_a {13.4c 11.65c}
}
#lnk_3_5 {5.8c 7.1c} 
#lnk_5_0 {3.7c 6.6c} 

#parsing LTSSM trace file
set filename "pcie_debug_ltssm_trc.dat"
set fh [open $filename r]
fconfigure $fh -buffering line
gets $fh data

set pre_st 0
set cur_st "na"
set last_st 0

set last_grp 0
set cur_lnk lnk_0_1
set last_lnk "na"

#puts "Debug: data -> $data"

while {$data != ""} {
	set trc [split $data]
	set trans [lindex $trc 0]
	set pre_st [expr $trans & 0x3f] 
        if {$cur_st == "na"} {
        	set cur_st $pre_st
        	dict with ltssm_st $cur_st {
		incr visited
		}
	        set cur_grp [dict get $ltssm_st $cur_st grp]
                $c itemconfigure [set st_${cur_grp}] -fill green
        }
	if { ($pre_st != $cur_st) } {
		set last_st $cur_st
		break
	}
	set cur_st [expr ($trans >> 8) & 0x3f]
        #puts "pre_st-> $pre_st ; cur_st-> $cur_st"
	dict with ltssm_st $cur_st {
		incr visited
		}
	#get transition link ID
	set cur_grp [dict get $ltssm_st $cur_st grp]
	set pre_grp [dict get $ltssm_st $pre_st grp]
	if {$cur_grp == $pre_grp} {
                $c itemconfigure [set st_${pre_grp}] -fill green
		gets $fh data
                #puts "Debug: data -> $data"
		continue
		}
        $c itemconfigure [set st_${pre_grp}] -fill green
	set last_grp $cur_grp

	set cur_lnk "lnk_${pre_grp}_${cur_grp}"
	if { [dict exists $lnk_occurance $cur_lnk] } {
		dict incr lnk_occurance $cur_lnk
		set last_lnk $cur_lnk
	} else {
		puts "Warning: unexpected transition: "
		set pre_name [dict get $ltssm_st $pre_st name] 
		puts "   From: $pre_name"
		set cur_name [dict get $ltssm_st $cur_st name] 
		puts "   To  : $cur_name"
	}
	gets $fh data
        #puts "Debug: data -> $data"
}

$c itemconfigure [set st_$last_grp] -fill orange
#puts "Debug: last_lnk -> $last_lnk"
if { $last_lnk != "na" } {  
        $c itemconfigure [set $last_lnk] -fill red -width 0.5m
}

  # $c itemconfigure [set lnk_3_a] -fill blue -width 0.5m
  # $c itemconfigure [set lnk_a_c] -fill blue -width 0.5m
  # $c itemconfigure [set lnk_e_3] -fill blue -width 0.5m
  # $c itemconfigure [set lnk_c_e] -fill blue -width 0.5m

#Mark link occurance
foreach key [dict keys $lnk_occurance] {
	$c create text [dict get $lnk_cord $key] -text [dict get $lnk_occurance $key] -anchor n 

}
close $fh

