#
package require Tcl	8.5
package require Tk
#package require Ttk

wm withdraw .
eval destroy [winfo child .]
set w .item
catch {destroy $w}

toplevel $w
wm title $w "Xilinx PCIE In-system Debugger for Receiver Detect"

wm iconname $w "Items"
#positionWindow $w
set c $w.frame.c

label $w.msg -wraplength 5i -justify center -text "TX Receiver Detect "
pack $w.msg -side bottom

frame $w.frame
pack $w.frame -side top -fill both -expand yes

canvas $c -scrollregion {0c 0c 20c 20c} -width 10c -height 10c \
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
          set width [format "%2x" $temp1]
          puts "width : $width"   
        }
        if {$count==3} {
          set temp2 [expr $line & 0xFF]
          set speed [format "%02x" $temp2]
          puts "speed : $speed"      
        }       
     }
close $fp

#Create transition diagram
$c create text 2c 0.1c -text "Max link width      : $phy_lane" -anchor n
$c create text 2.5c 0.6c -text "Negotiated Link width   : $width" -anchor n

set ln_0 [$c create oval 3c 2.4c 3.2c 2.6c  -tags item]
$c create text 2c 2.3c -text "Lane 0" -anchor n

set ln_1 [$c create oval 3c 4.4c 3.2c 4.6c  -tags item]
$c create text 2c 4.3c -text "Lane 1" -anchor n

set ln_2 [$c create oval 3c 6.4c 3.2c 6.6c  -tags item]
$c create text 2c 6.3c -text "Lane 2" -anchor n

set ln_3 [$c create oval 3c 8.4c 3.2c 8.6c  -tags item]
$c create text 2c 8.3c -text "Lane 3" -anchor n

set ln_4 [$c create oval 3c 10.4c 3.2c 10.6c  -tags item]
$c create text 2c 10.3c -text "Lane 4" -anchor n

set ln_5 [$c create oval 3c 12.4c 3.2c 12.6c  -tags item]
$c create text 2c 12.3c -text "Lane 5" -anchor n

set ln_6 [$c create oval 3c 14.4c 3.2c 14.6c  -tags item]
$c create text 2c 14.3c -text "Lane 6" -anchor n

set ln_7 [$c create oval 3c 16.4c 3.2c 16.6c  -tags item]
$c create text 2c 16.3c -text "Lane 7" -anchor n

set fp [open "rxdet.dat" r]
set count 0
set lane 0
set i 0
while {[gets $fp line]!=-1} {
    incr count    
    puts "count = $count"
    puts " i = $i"
        if {$count==($i + 1) } {
          set temp0 [expr $line & 0xFF]
          set line0 [format "%02x" $temp0]
          if { $line0 == "13"} {
           set lane_num [expr int($i /4)] 
		         puts "Receiver detected in lane $lane_num"
           $c itemconfigure [set ln_$lane_num] -fill green 
          }        
         }
        if {$count==($i + 2) } {
          set temp1 [expr $line & 0xff]
          set line1 [format "%02x" $temp1] 
          puts "line1 = $line1" 
          if { $line1 == "13"} {
           set lane_num [expr int($i /4)] 
		         puts "Receiver detected in lane $lane_num"
           $c itemconfigure [set ln_$lane_num] -fill green 
          }        
        }
        if {$count==($i + 3)} {
          set temp2 [expr $line & 0xFF]
          set line2 [format "%02x" $temp2]
          if { $line2 == "13"} {
           set lane_num [expr int($i /4)] 
		         puts "Receiver detected in lane $lane_num"
           $c itemconfigure [set ln_$lane_num] -fill green 
          }  
         }
        if {$count==($i + 4) } {
          set temp3 [expr $line & 0xFF]
          set line3 [format "%02x" $temp3]  
          incr i 4        
          if { $line3 == "13"} {
           set lane_num [expr int($i /4)] 
		         puts "Receiver detected in lane $lane_num"
           $c itemconfigure [set ln_$lane_num] -fill green 
          } 
        }   
       
        

    }  
close $fp
