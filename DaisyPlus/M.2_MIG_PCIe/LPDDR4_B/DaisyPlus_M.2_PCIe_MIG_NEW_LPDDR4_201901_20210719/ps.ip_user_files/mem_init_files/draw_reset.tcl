#
#
#
#
# draw_reset.tcl
# draw the base state transition diagram of LTSSM

package require Tcl	8.5
package require Tk
#package require Ttk

wm withdraw .
eval destroy [winfo child .]
set w .item
catch {destroy $w}

toplevel $w
wm title $w "Xilinx PCIE In-system Debugger for Reset Sequence"

wm iconname $w "Items"
#positionWindow $w
set c $w.frame.c

label $w.msg -wraplength 5i -justify center -text "PHY Reset sequence "
pack $w.msg -side bottom

frame $w.frame
pack $w.frame -side top -fill both -expand yes

canvas $c -scrollregion {0c 0c 20c 20c} -width 20c -height 20c \
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
$c create text 7c 0c -text "Reset State Machine:" -anchor n

set st_0 [$c create oval 6c 1c 9c 2c  -tags item]
$c create text 7.5c 1.3c -text "IDLE" -anchor n

set st_1 [$c create oval 6c 3c 9c 4c  -tags item]
$c create text 7.5c 3.3c -text "POWERGOOD" -anchor n

set st_2 [$c create oval 6c 5c 9c 6c  -tags item]
$c create text 7.5c 5.3c -text "PLL_LOCK" -anchor n

set st_3 [$c create oval 6c 7c 9c 8c  -tags item]
$c create text 7.5c 7.3c -text "TXPROGDIV" -anchor n

set st_4 [$c create oval 6c 9c 9c 10c  -tags item]
$c create text 7.5c 9.3c -text "RESET_DONE" -anchor n

set st_5 [$c create oval 6c 11c 9c 12c  -tags item]
$c create text 7.5c 11.3c -text "TXSYNC_START" -anchor n

set st_6 [$c create oval 6c 13c 9c 14c  -tags item]
$c create text 7.5c 13.3c -text "TXSYNC_DONE" -anchor n

set st_7 [$c create oval 6c 15c 9c 16c  -tags item]
$c create text 7.5c 15.3c -text "PHYSTATUS" -anchor n

#$c create text 16c 0c -text "Receiver detected in	:" -anchor n


# create transistion links
set lnk_0_1 [$c create line 7.5c 2c 7.5c 3c -arrow last -tags item -width 0.3m]

set lnk_1_2 [$c create line 7.5c 4c 7.5c 5c -arrow last -tags item -width 0.3m]

set lnk_2_3 [$c create line 7.5c 6c 7.5c 7c -arrow last -tags item -width 0.3m]

set lnk_3_4 [$c create line 7.5c 8c 7.5c 9c -arrow last -tags item -width 0.3m]

set lnk_4_5 [$c create line 7.5c 10c 7.5c 11c -arrow last -tags item -width 0.3m]

set lnk_5_6 [$c create line 7.5c 12c 7.5c 13c -arrow last -tags item -width 0.3m]

set lnk_6_7 [$c create line 7.5c 14c 7.5c 15c -arrow last -tags item -width 0.3m]

set lnk_7_0 [$c create line 8c 16c 6cc 18c 4c 5.5c 6c 1.5c -arrow last -tags item -smooth on -width 0.3m]

#
# reset state <-> id mapping  
set reset_st {
0   {grp 0 visited 0 name "IDLE"}
1   {grp 1 visited 0 name "GTPOWERGOOD"}
2   {grp 2 visited 0 name "PLL_LOCK"}
3   {grp 3 visited 0 name "TXPROGDIV"}
4   {grp 4 visited 0 name "RESET_DONE"}
5   {grp 5 visited 0 name "TXSYNC_START"}
6   {grp 6 visited 0 name "TXSYNC_DONE"}
7   {grp 7 visited 0 name "PHYSTATUS"}
}    


     
set lnk_occurance {
lnk_0_1 0
lnk_1_2 0
lnk_2_3 0
lnk_3_4 0
lnk_4_5 0
lnk_5_6 0
lnk_6_7 0
lnk_7_0 0
}

set lnk_cord {
lnk_0_1 {6.8c 2c}  
lnk_1_2 {7.3c 4c} 
lnk_2_3 {7.3c 6c} 
lnk_3_4 {6.8c 8.0c} 
lnk_4_5 {7.3c 10c}
lnk_5_6 {7.3c 12c}
lnk_6_7 {6.8c 14c}
lnk_7_0 {7.3c 16c}
}
#lnk_3_5 {5.8c 7.1c} 
#lnk_5_0 {3.7c 6.6c} 

#parsing Reset trace file
set filename "pcie_debug_rst_trc.dat"
set fh [open $filename r]
fconfigure $fh -buffering line
gets $fh data

set pre_st 0
set cur_st 0
set last_st 0
set last_grp 0
set cur_lnk lnk_0_1
set last_lnk 0

while {$data != ""} {
  puts $data
	#set trc [split $data]
 set pre_st [expr ($data >> 8) & 0x7]
 puts $pre_st
	if { $pre_st != $cur_st } {
		set last_st $cur_st
		break
	}
 set cur_st [expr $data & 0x7]
 puts $cur_st
	dict with reset_st $cur_st {
		incr visited
		}


	#get transition link ID
	set cur_grp [dict get $reset_st $cur_st grp]
	set pre_grp [dict get $reset_st $pre_st grp]
	if {$cur_grp == $pre_grp} {
		gets $fh data
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
		set pre_name [dict get $reset_st $pre_st name] 
		puts "   From: $pre_name"
		set cur_name [dict get $reset_st $cur_st name] 
		puts "   To  : $cur_name"
	}
	gets $fh data
}

if { $last_grp != 0 } {
		$c itemconfigure [set st_$last_grp] -fill red
  $c itemconfigure [set $last_lnk] -fill red -width 0.5m
		}


#Mark link occurance
foreach key [dict keys $lnk_occurance] {
	$c create text [dict get $lnk_cord $key] -text [dict get $lnk_occurance $key] -anchor n 

}
close $fh





