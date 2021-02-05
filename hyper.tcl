#---------------------------------- Tool Command language (TCL) ---------------------------


#------------------------------------- Environmental Settings -----------------------------

 set nn                49                            ;# number of mobilenodes
 set val(x)            1100			     ;#X co-ordinate value
 set val(y)            910			     ;#Y co-ordinate value
 set chan              [new Channel/WirelessChannel] ;#Channel Type

#-------------------------------------- Simulator Object Creation -------------------------

set ns_ [new Simulator]


#------------------------------ Trace File to record all the Events -----------------------

set f [open Trace.tr w]
$ns_ trace-all $f
$ns_ use-newtrace

#------------------------------- NAM Window creation --------------------------------------

set namtrace [open Nam.nam w]
$ns_ namtrace-all-wireless $namtrace $val(x) $val(y)


#---------------------------------- Topology Creation ------------------------------------

set topo [new Topography]
$topo load_flatgrid $val(x) $val(y)

#---------------------------------- General Operational Director -------------------------

create-god $nn

#---------------------------------------- Node Configuration -----------------------------

$ns_ node-config  -adhocRouting DSR \
 		 -llType LL \
                 -macType Mac/802_11 \
                 -ifqType CMUPriQueue \
                 -ifqLen 500 \
                 -antType Antenna/OmniAntenna \
                 -propType Propagation/TwoRayGround \
                 -phyType Phy/WirelessPhy \
                 -channel $chan \
                 -topoInstance $topo \
		 -agentTrace ON \
                 -routerTrace ON \
                 -macTrace ON \
                 -movementTrace ON \
                 -idlePower 1.2 \
		 -rxPower 1.0 \
		 -txPower 1.5 \
		 -sleepPower 0.000015 \
           	 -initialEnergy 200 \
                 -energyModel EnergyModel

#------------------------------------- Node Creation ----------------------------------

for { set i 0 } { $i < $nn } {incr i } {
						set node_($i) [$ns_ node]
						$node_($i) set X_ 466.0
						$node_($i) set Y_ 449.0
						$node_($i) set Z_ 0.0
						$node_($i) color black
						if { $i==0 && $i<1  } { $ns_ initial_node_pos $node_($i) 60 }
						if { $i!=0 && $i<37 } { $ns_ initial_node_pos $node_($i) 45 }
						if { $i!=0 && $i>36 } { $ns_ initial_node_pos $node_($i) 35 }
					    } 



for {set i 0} {$i < 49 } {incr i} { $ns_ at 0.0001 "$node_($i) setdest 466.225880583511 449.021221429206 2000" }
for {set i 1} {$i < 49 } {incr i} { $ns_ at 0.1    "$node_($i) setdest 552.359213803596 580.220147495575 2000" }
for {set i 1} {$i < 48 } {incr i} { $ns_ at 0.2    "$node_($i) setdest 639.359213803596 448.220147495575 2000" }
for {set i 1} {$i < 47 } {incr i} { $ns_ at 0.3    "$node_($i) setdest 552.359213803596 296.220147495575 2000" }
for {set i 1} {$i < 46 } {incr i} { $ns_ at 0.4    "$node_($i) setdest 374.359213803596 303.220147495575 2000" }
for {set i 1} {$i < 45 } {incr i} { $ns_ at 0.5    "$node_($i) setdest 293.359213803596 455.220147495575 2000" }
for {set i 1} {$i < 44 } {incr i} { $ns_ at 0.6    "$node_($i) setdest 381.359213803596 603.220147495575 2000" }
for {set i 1} {$i < 43 } {incr i} { $ns_ at 0.7    "$node_($i) setdest 466.225880583511 449.021221429206 2000" }

set vr 0

#----------------------------------------- Node Deploy ----------------------------------
proc mobility { tm mob } {
			   global ns_ node_ vr  sink 
			   if { $mob==0 } {
			   $ns_ at $tm "$node_(0)  setdest 466.225880583511 449.021221429206 2000"
			   $ns_ at $tm "$node_(37) setdest 673.691525046676 552.767963877818 2000"
			   $ns_ at $tm "$node_(1)  setdest 695.901119627858 702.973138186711 2000"
			   $ns_ at $tm "$node_(2)  setdest 743.022206531982 468.390711583492 2000"
		           $ns_ at $tm "$node_(3)  setdest 876.090738537459 695.528115016839 2000"
			   $ns_ at $tm "$node_(4)  setdest 925.524155210011 613.036542529147 2000"
			   $ns_ at $tm "$node_(5)  setdest 795.359213803596 575.220147495575 2000"
			   $ns_ at $tm "$node_(6)  setdest 930.524155210011 485.036542529147 2000"
			   $ns_ at $tm "$node_(38) setdest 484.996194853263 685.343957747226 2000"
			   $ns_ at $tm "$node_(7)  setdest 459.223696334876 892.060762497745 2000"
			   $ns_ at $tm "$node_(8)  setdest 595.114464158148 901.013027255123 2000"
			   $ns_ at $tm "$node_(9)  setdest 297.691525046676 906.767963877818 2000"
			   $ns_ at $tm "$node_(10) setdest 745.901119627858 842.973138186711 2000"
			   $ns_ at $tm "$node_(11) setdest 400.413553229072 777.661385758214 2000"
			   $ns_ at $tm "$node_(12) setdest 565.938168848664 770.057171680840 2000"
			   $ns_ at $tm "$node_(39) setdest 274.846925787665 576.162515859540 2000"
			   $ns_ at $tm "$node_(13) setdest 177.996194853263 574.343957747226 2000"
			   $ns_ at $tm "$node_(14) setdest 264.413553229072 802.661385758214 2000"
			   $ns_ at $tm "$node_(15) setdest 22.223696334876 521.060762497745 2000"
			   $ns_ at $tm "$node_(16) setdest 109.090738537459 844.528115016839 2000"
			   $ns_ at $tm "$node_(17) setdest 51.114464158148 692.013027255123 2000"
			   $ns_ at $tm "$node_(18) setdest 215.204518193039 686.194032574156 2000"
			   $ns_ at $tm "$node_(40) setdest 260.375272298711 338.441029142526 2000"
			   $ns_ at $tm "$node_(19) setdest 285.859140797216 176.086348976465 2000"
			   $ns_ at $tm "$node_(20) setdest 1.886480278426 384.818870206905 2000"
		   	   $ns_ at $tm "$node_(21) setdest 12.022206531982 224.390711583492 2000"
			   $ns_ at $tm "$node_(22) setdest 143.938168848664 129.571712680840 2000"
			   $ns_ at $tm "$node_(23) setdest 190.364052774320 438.687297091577 2000"
			   $ns_ at $tm "$node_(24) setdest 243.359213803596 262.220147495575 2000"
			   $ns_ at $tm "$node_(41) setdest 461.359213803596 222.220147495575 2000"
			   $ns_ at $tm "$node_(25) setdest 387.359213803596 165.220147495575 2000"
			   $ns_ at $tm "$node_(26) setdest 653.886480278426 125.818870206905 2000"
			   $ns_ at $tm "$node_(27) setdest 614.022206531982 21.390711583492 2000"
			   $ns_ at $tm "$node_(28) setdest 292.938168848664 77.571712680840 2000"
			   $ns_ at $tm "$node_(29) setdest 512.364052774320 123.687297091577 2000"
		  	   $ns_ at $tm "$node_(30) setdest 414.359213803596 019.220147495575 2000"
			   $ns_ at $tm "$node_(42) setdest 661.359213803596 335.220147495575 2000"
			   $ns_ at $tm "$node_(31) setdest 898.359213803596 253.220147495575 2000"
			   $ns_ at $tm "$node_(32) setdest 629.359213803596 229.220147495575 2000"
			   $ns_ at $tm "$node_(33) setdest 754.359213803596 367.220147495575 2000"
		  	   $ns_ at $tm "$node_(34) setdest 753.359213803596 256.220147495575 2000"
			   $ns_ at $tm "$node_(35) setdest 917.359213803596 361.220147495575 2000"
			   $ns_ at $tm "$node_(36) setdest 773.359213803596 107.220147495575 2000"
			   $ns_ at $tm "$node_(43) setdest 552.359213803596 580.220147495575 2000"
			   $ns_ at $tm "$node_(48) setdest 639.359213803596 448.220147495575 2000"
			   $ns_ at $tm "$node_(47) setdest 552.359213803596 296.220147495575 2000"
			   $ns_ at $tm "$node_(46) setdest 374.359213803596 303.220147495575 2000"
		 	   $ns_ at $tm "$node_(45) setdest 293.359213803596 455.220147495575 2000"
			   $ns_ at $tm "$node_(44) setdest 381.359213803596 603.220147495575 2000"
			   }
		         }


#-------------------------- RL Algorithm -----------------------------------

proc nnode {  } { 
  		 global node_ ns_ nn
		 set r [open "NNode.tr" w]
		 puts $r "----------------------------------------------------------"
		 puts $r "Node\t\tNeighbors\tx-cor\ty-cor \tDistance"
		 puts $r "----------------------------------------------------------"	
	         for { set i 0 } { $i <43 } {  incr i } { 
							 set k 0 ; set wt 0
		 					 set x1 [$node_($i) set X_]
							 set y1 [$node_($i) set Y_]
		              				 for { set j 0 } { $j <43 } { incr j } {
							 set x2 [$node_($j) set X_]
							 set y2 [$node_($j) set Y_]
						   	 set dis [expr sqrt(pow([expr $x2 - $x1],2)+pow([expr $y2 - $y1],2))]
 							 if { $dis <240 && $i!= $j } { incr k ; set wt $i 
									    set x2 [expr int($x1)] ; set y2 [expr int($y1)]
							                    puts $r "$i\t\t $j\t\t$x2\t$y2\t$dis"  }  }
							 puts $r "Total_Neighbors $wt = $k"
							} 
		 close $r   
		}

#-----------------------------------------Give Node Color, Label ----------------------------------

for { set i 0 } { $i<49 } { incr i } { 
				                   if {$i==0 } { 
							       $ns_ at 1.1 "$node_($i) add-mark c$i black hexagon"
							       $ns_ at 1.1 "$node_($i) color blue"
							       $ns_ at 1.1 "$node_($i) label Basestation"
							}
							       $ns_ at 1.1 "$node_($i) color green4"  
						      
						 	      
                                     }



#---------------  Input File for Request ----------------	
				
set y [open "atemp" w]
puts $y "64 1.5 0.05 0.5"
close $y

#---------------  Input File for Responce ----------------

set y [open "btemp" w]
puts $y "64 10.0 0.5 0.05"
close $y

#---------------  Input File for Connection ----------------

set y [open "ctemp" w]
puts $y "18.0 64 0.05 0.5"
close $y


$ns_ at 0.8 "mobility 0.8 0"
$ns_ at 1.0 "mobility 1.0 0"
for { set i 4 } { $i<31 } { incr i } { $ns_ at $i "mobility $i 1" }
$ns_ at 1.1 "nnode"


$ns_ at 1.4 "exec awk -f request.awk NNode.tr atemp"
$ns_ at 1.4 "source req.tcl"

$ns_ at 9.4 "exec awk -f responce.awk NNode.tr btemp"
$ns_ at 9.4 "source resp.tcl"

$ns_ at 17.5 "exec awk -f Process_Channel.awk Input ctemp chan_Assign.tr NNode.tr"
$ns_ at 17.5 "source assign.tcl"


#----------------------------------------- control parameters ----------------------------------

for {set i 0} {$i<$nn} {incr i} {
				  $ns_ at 0.0 "$node_($i) label-color deeppink"
				  set sink($i) [new Agent/LossMonitor]
				  $ns_ attach-agent $node_($i) $sink($i)
				}


#------------------------ Constant Bit Rate (CBR) Creation ----------------------------------

proc attach-CBR-traffic { node sink pk itv } {
					   #Get an instance of the simulator
					   global c node_
					   set ns_ [Simulator instance]
					   set udp [new Agent/UDP]
					   $ns_ attach-agent $node $udp
					   #Create a CBR  agent and attach it to the node
					   set cbr [new Application/Traffic/CBR]
					   $cbr attach-agent $udp
					   $cbr set packetSize_ $pk	;#sub packet size
					   $cbr set interval_ $itv
					   #Attach CBR source to sink;
					   $ns_ connect $udp $sink
					   return $cbr
  				     }


$ns_ color 0 blue

#---------------------------------- Get Source and Destination -------------------------------------

#------ Source 1 -----------

proc sourse1 { } {
                  puts "Enter the 1st Source node (1-35) : "
                  set s1 [gets stdin]
                  if { $s1 <1 || $s1>35 } {  puts "\nWrong input !!!\n" ; sourse1 } else { return $s1 } 
                 }

#------ Source 2 -----------

proc sourse2 { } {
		  puts "Enter the 2nd Source node (1-35) : "
		  set s2 [gets stdin]
		  if { $s2 <1 || $s2>35 } { puts "\nWrong input !!!\n"  ; sourse2 } else { return $s2 }
		 }

#------ File Type -----------
proc fle_tye { n } {
		    puts "Enter the $n Source File Type (1-3) : "
                    set fp [gets stdin]
                    if { $fp <1 || $fp>3 } {  puts "\nWrong input !!!\n" ; fle_tye $n } else { return $fp } 
                   }

set sq1 [sourse1]
set sq2 [sourse2]


if { $sq1==$sq2 } { 
		    puts " Source 1 and Source 2 are Same !!!" 
		    puts "........... Press Any key to Exit ........"
		    gets stdin ex
		    exit 0      
                  } 

 

puts "\n\t File Type and Size\n\t~~~~~~~~~~~~~~~~~~~~"
puts "\n\t1.Data ( 12288 )  \n\t2.Data2 ( 18432 ) \n\t3.Data3 ( 24576 )\n"

set fp1 [fle_tye 1st]
set fp2 [fle_tye 2nd]

if { $fp1==1 } { set sz1 12288 } ; if { $fp1==2 } { set sz1 18432 } ; if { $fp1==3 } { set sz1 24576 } 
if { $fp2==1 } { set sz2 12288 } ; if { $fp2==2 } { set sz2 18432 } ; if { $fp2==3 } { set sz2 24576 } 


set w [open "Input" w]
puts $w "------------------------"
puts $w "Source\tType\tPack_Size"
puts $w "------------------------"
puts $w "$sq1\t$fp1\t$sz1"
puts $w "$sq2\t$fp2\t$sz2"
close $w  
$ns_ at 16.0 "$node_($sq1) label source" 
$ns_ at 17.0 "$node_($sq2) label source"
$ns_ at 2.20 "$node_(37) label AP"
$ns_ at 3.20 "$node_(38) label AP"
$ns_ at 3.90 "$node_(39) label AP"
$ns_ at 4.70 "$node_(40) label AP"
$ns_ at 5.60 "$node_(41) label AP"
$ns_ at 6.50 "$node_(42) label AP"

$ns_ at 10.20 "$node_(43) label CH"
$ns_ at 10.30 "$node_(44) label CH"
$ns_ at 11.50 "$node_(45) label CH"
$ns_ at 11.70 "$node_(46) label CH"
$ns_ at 12.80 "$node_(47) label CH"
$ns_ at 12.90 "$node_(48) label CH"

$ns_ at 1.0 "$ns_ trace-annotate \"RAT analysis\""
$ns_ at 3.0 "$ns_ trace-annotate \"network high processing load\""
$ns_ at 4.10 "$ns_ trace-annotate \"Access Points reaches maximum load\""
$ns_ at 8.25 "$ns_ trace-annotate \"Reinforcement learning analysis\""
$ns_ at 18.25 "$ns_ trace-annotate \"we need to propose another routing comm\""

#-------------------------------------- For Graph ----------------------------------------

set pr [open PDR.xg w]
puts $pr "Markers: true"
puts $pr "BoundBox: true"
puts $pr "Background: skyblue\n"
puts $pr "0 0"

proc record { a b } {
		     global ns_ pr tp sink
		     set t_pd 0 ; set t_tp 0 
  		     set nw [$ns_ now]
  		     set rec1 [$a set npkts_]
  		     set los1 [$a set nlost_]
  		     set byt1 [$a set bytes_]

  		     set rec2 [$b set npkts_]
  		     set los2 [$b set nlost_]
  		     set byt2 [$b set bytes_]

  		     set kb1 [expr double(($byt1*8.0)/(2))]
  		     set pd1 [expr $rec1/($rec1+$los1+0.0)] 

  		     set kb2 [expr double(($byt2*8.0)/(2))]
  		     set pd2 [expr $rec2/($rec2+$los2+0.0)] 

		     set t_pd [expr $pd1 + $pd2 ]
		     set t_tp [expr $kb1 + $kb2 ]
  		     $a set nlost_ 0   
  		     $b set nlost_ 0   

  		     puts $pr "$nw [expr $t_pd/2]"
  		     puts $tp "$nw $t_tp"
		  }

#$ns_ at 25.0 "record $sink($sq1) $sink($sq2)"

#--------------------------- Finish Procedure to exec NAM Window ------------------------------

proc finish {} {
	global ns_ namtrace node_ sink 
	$ns_ flush-trace
        close $namtrace 
		
		exec xgraph throughput.xg -t "throughputs" -x "range"  -y "AP(ms)" -geometry "800x400" &
		exec xgraph pdr.xg -t "packet drop ratio" -x "Node" -y "packet(ms)" -geometry "800*400" &
		exec xgraph energy.xg -t "energy" -x "range"  -y "time(ms)" -geometry "800x400" &
		exec nam -r 5m Nam.nam &
	exit 0
	}


$ns_ at 30.0 "finish"

puts "Start of simulation.."
$ns_ run
         



