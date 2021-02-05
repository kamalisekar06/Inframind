#----------------------------------- Client Sends Request to AP -------------------- 
set inf10 [attach-CBR-traffic $node_(2) $sink(37) 64 0.5]
$ns_ at 1.5 "$inf10 start"
$ns_ at 1.55 "$inf10 stop"
$ns_ at 1.5 "$node_(2) color blue"
$ns_ at 1.505 "$ns_ trace-annotate \" Client - 2 Sends Request to it's Nearest  Access Point - 37 \""
set inf11 [attach-CBR-traffic $node_(5) $sink(37) 64 0.5]
$ns_ at 1.6 "$inf11 start"
$ns_ at 1.65 "$inf11 stop"
$ns_ at 1.6 "$node_(5) color blue"
$ns_ at 1.605 "$ns_ trace-annotate \" Client - 5 Sends Request to it's Nearest  Access Point - 37 \""
set inf12 [attach-CBR-traffic $node_(1) $sink(37) 64 0.5]
$ns_ at 1.7 "$inf12 start"
$ns_ at 1.75 "$inf12 stop"
$ns_ at 1.7 "$node_(1) color blue"
$ns_ at 1.705 "$ns_ trace-annotate \" Client - 1 Sends Request to it's Nearest  Access Point - 37 \""
set inf13 [attach-CBR-traffic $node_(3) $sink(37) 64 0.5]
$ns_ at 1.8 "$inf13 start"
$ns_ at 1.85 "$inf13 stop"
$ns_ at 1.8 "$node_(3) color blue"
$ns_ at 1.805 "$ns_ trace-annotate \" Client - 3 Sends Request to it's Nearest  Access Point - 37 \""
set inf14 [attach-CBR-traffic $node_(4) $sink(37) 64 0.5]
$ns_ at 1.9 "$inf14 start"
$ns_ at 1.95 "$inf14 stop"
$ns_ at 1.9 "$node_(4) color blue"
$ns_ at 1.905 "$ns_ trace-annotate \" Client - 4 Sends Request to it's Nearest  Access Point - 37 \""
set inf15 [attach-CBR-traffic $node_(33) $sink(37) 64 0.5]
$ns_ at 2 "$inf15 start"
$ns_ at 2.05 "$inf15 stop"
$ns_ at 2 "$node_(33) color blue"
$ns_ at 2.005 "$ns_ trace-annotate \" Client - 33 Sends Request to it's Nearest  Access Point - 37 \""
set inf16 [attach-CBR-traffic $node_(6) $sink(37) 64 0.5]
$ns_ at 2.1 "$inf16 start"
$ns_ at 2.15 "$inf16 stop"
$ns_ at 2.1 "$node_(6) color blue"
$ns_ at 2.105 "$ns_ trace-annotate \" Client - 6 Sends Request to it's Nearest  Access Point - 37 \""
set inf17 [attach-CBR-traffic $node_(10) $sink(37) 64 0.5]
$ns_ at 2.2 "$inf17 start"
$ns_ at 2.25 "$inf17 stop"
$ns_ at 2.2 "$node_(10) color blue"
$ns_ at 2.205 "$ns_ trace-annotate \" Client - 10 Sends Request to it's Nearest  Access Point - 37 \""
set inf28 [attach-CBR-traffic $node_(12) $sink(38) 64 0.5]
$ns_ at 2.3 "$inf28 start"
$ns_ at 2.35 "$inf28 stop"
$ns_ at 2.3 "$node_(12) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 12 Sends Request to it's Nearest  Access Point - 38 \""
set inf28 [attach-CBR-traffic $node_(11) $sink(38) 64 0.5]
$ns_ at 2.3 "$inf28 start"
$ns_ at 2.35 "$inf28 stop"
$ns_ at 2.3 "$node_(11) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 11 Sends Request to it's Nearest  Access Point - 38 \""
set inf28 [attach-CBR-traffic $node_(7) $sink(38) 64 0.5]
$ns_ at 2.3 "$inf28 start"
$ns_ at 2.35 "$inf28 stop"
$ns_ at 2.3 "$node_(7) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 7 Sends Request to it's Nearest  Access Point - 38 \""
set inf28 [attach-CBR-traffic $node_(8) $sink(38) 64 0.5]
$ns_ at 2.3 "$inf28 start"
$ns_ at 2.35 "$inf28 stop"
$ns_ at 2.3 "$node_(8) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 8 Sends Request to it's Nearest  Access Point - 38 \""
set inf28 [attach-CBR-traffic $node_(9) $sink(38) 64 0.5]
$ns_ at 2.3 "$inf28 start"
$ns_ at 2.35 "$inf28 stop"
$ns_ at 2.3 "$node_(9) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 9 Sends Request to it's Nearest  Access Point - 38 \""
set inf28 [attach-CBR-traffic $node_(1) $sink(38) 64 0.5]
$ns_ at 2.3 "$inf28 start"
$ns_ at 2.35 "$inf28 stop"
$ns_ at 2.3 "$node_(1) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 1 Sends Request to it's Nearest  Access Point - 38 \""
set inf28 [attach-CBR-traffic $node_(10) $sink(38) 64 0.5]
$ns_ at 2.3 "$inf28 start"
$ns_ at 2.35 "$inf28 stop"
$ns_ at 2.3 "$node_(10) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 10 Sends Request to it's Nearest  Access Point - 38 \""
set inf38 [attach-CBR-traffic $node_(13) $sink(39) 64 0.5]
$ns_ at 2.3 "$inf38 start"
$ns_ at 2.35 "$inf38 stop"
$ns_ at 2.3 "$node_(13) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 13 Sends Request to it's Nearest  Access Point - 39 \""
set inf38 [attach-CBR-traffic $node_(18) $sink(39) 64 0.5]
$ns_ at 2.3 "$inf38 start"
$ns_ at 2.35 "$inf38 stop"
$ns_ at 2.3 "$node_(18) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 18 Sends Request to it's Nearest  Access Point - 39 \""
set inf38 [attach-CBR-traffic $node_(23) $sink(39) 64 0.5]
$ns_ at 2.3 "$inf38 start"
$ns_ at 2.35 "$inf38 stop"
$ns_ at 2.3 "$node_(23) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 23 Sends Request to it's Nearest  Access Point - 39 \""
set inf38 [attach-CBR-traffic $node_(17) $sink(39) 64 0.5]
$ns_ at 2.3 "$inf38 start"
$ns_ at 2.35 "$inf38 stop"
$ns_ at 2.3 "$node_(17) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 17 Sends Request to it's Nearest  Access Point - 39 \""
set inf38 [attach-CBR-traffic $node_(16) $sink(39) 64 0.5]
$ns_ at 2.3 "$inf38 start"
$ns_ at 2.35 "$inf38 stop"
$ns_ at 2.3 "$node_(16) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 16 Sends Request to it's Nearest  Access Point - 39 \""
set inf38 [attach-CBR-traffic $node_(15) $sink(39) 64 0.5]
$ns_ at 2.3 "$inf38 start"
$ns_ at 2.35 "$inf38 stop"
$ns_ at 2.3 "$node_(15) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 15 Sends Request to it's Nearest  Access Point - 39 \""
set inf38 [attach-CBR-traffic $node_(14) $sink(39) 64 0.5]
$ns_ at 2.3 "$inf38 start"
$ns_ at 2.35 "$inf38 stop"
$ns_ at 2.3 "$node_(14) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 14 Sends Request to it's Nearest  Access Point - 39 \""
set inf38 [attach-CBR-traffic $node_(11) $sink(39) 64 0.5]
$ns_ at 2.3 "$inf38 start"
$ns_ at 2.35 "$inf38 stop"
$ns_ at 2.3 "$node_(11) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 11 Sends Request to it's Nearest  Access Point - 39 \""
set inf48 [attach-CBR-traffic $node_(24) $sink(40) 64 0.5]
$ns_ at 2.3 "$inf48 start"
$ns_ at 2.35 "$inf48 stop"
$ns_ at 2.3 "$node_(24) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 24 Sends Request to it's Nearest  Access Point - 40 \""
set inf48 [attach-CBR-traffic $node_(23) $sink(40) 64 0.5]
$ns_ at 2.3 "$inf48 start"
$ns_ at 2.35 "$inf48 stop"
$ns_ at 2.3 "$node_(23) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 23 Sends Request to it's Nearest  Access Point - 40 \""
set inf48 [attach-CBR-traffic $node_(19) $sink(40) 64 0.5]
$ns_ at 2.3 "$inf48 start"
$ns_ at 2.35 "$inf48 stop"
$ns_ at 2.3 "$node_(19) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 19 Sends Request to it's Nearest  Access Point - 40 \""
set inf48 [attach-CBR-traffic $node_(21) $sink(40) 64 0.5]
$ns_ at 2.3 "$inf48 start"
$ns_ at 2.35 "$inf48 stop"
$ns_ at 2.3 "$node_(21) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 21 Sends Request to it's Nearest  Access Point - 40 \""
set inf48 [attach-CBR-traffic $node_(22) $sink(40) 64 0.5]
$ns_ at 2.3 "$inf48 start"
$ns_ at 2.35 "$inf48 stop"
$ns_ at 2.3 "$node_(22) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 22 Sends Request to it's Nearest  Access Point - 40 \""
set inf48 [attach-CBR-traffic $node_(20) $sink(40) 64 0.5]
$ns_ at 2.3 "$inf48 start"
$ns_ at 2.35 "$inf48 stop"
$ns_ at 2.3 "$node_(20) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 20 Sends Request to it's Nearest  Access Point - 40 \""
set inf48 [attach-CBR-traffic $node_(25) $sink(40) 64 0.5]
$ns_ at 2.3 "$inf48 start"
$ns_ at 2.35 "$inf48 stop"
$ns_ at 2.3 "$node_(25) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 25 Sends Request to it's Nearest  Access Point - 40 \""
set inf58 [attach-CBR-traffic $node_(25) $sink(41) 64 0.5]
$ns_ at 2.3 "$inf58 start"
$ns_ at 2.35 "$inf58 stop"
$ns_ at 2.3 "$node_(25) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 25 Sends Request to it's Nearest  Access Point - 41\""
set inf58 [attach-CBR-traffic $node_(29) $sink(41) 64 0.5]
$ns_ at 2.3 "$inf58 start"
$ns_ at 2.35 "$inf58 stop"
$ns_ at 2.3 "$node_(29) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 29 Sends Request to it's Nearest  Access Point - 41\""
set inf58 [attach-CBR-traffic $node_(32) $sink(41) 64 0.5]
$ns_ at 2.3 "$inf58 start"
$ns_ at 2.35 "$inf58 stop"
$ns_ at 2.3 "$node_(32) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 32 Sends Request to it's Nearest  Access Point - 41\""
set inf58 [attach-CBR-traffic $node_(30) $sink(41) 64 0.5]
$ns_ at 2.3 "$inf58 start"
$ns_ at 2.35 "$inf58 stop"
$ns_ at 2.3 "$node_(30) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 30 Sends Request to it's Nearest  Access Point - 41\""
set inf58 [attach-CBR-traffic $node_(19) $sink(41) 64 0.5]
$ns_ at 2.3 "$inf58 start"
$ns_ at 2.35 "$inf58 stop"
$ns_ at 2.3 "$node_(19) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 19 Sends Request to it's Nearest  Access Point - 41\""
set inf58 [attach-CBR-traffic $node_(27) $sink(41) 64 0.5]
$ns_ at 2.3 "$inf58 start"
$ns_ at 2.35 "$inf58 stop"
$ns_ at 2.3 "$node_(27) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 27 Sends Request to it's Nearest  Access Point - 41\""
set inf58 [attach-CBR-traffic $node_(28) $sink(41) 64 0.5]
$ns_ at 2.3 "$inf58 start"
$ns_ at 2.35 "$inf58 stop"
$ns_ at 2.3 "$node_(28) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 28 Sends Request to it's Nearest  Access Point - 41\""
set inf58 [attach-CBR-traffic $node_(26) $sink(41) 64 0.5]
$ns_ at 2.3 "$inf58 start"
$ns_ at 2.35 "$inf58 stop"
$ns_ at 2.3 "$node_(26) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 26 Sends Request to it's Nearest  Access Point - 41\""
set inf58 [attach-CBR-traffic $node_(24) $sink(41) 64 0.5]
$ns_ at 2.3 "$inf58 start"
$ns_ at 2.35 "$inf58 stop"
$ns_ at 2.3 "$node_(24) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 24 Sends Request to it's Nearest  Access Point - 41\""
set inf68 [attach-CBR-traffic $node_(33) $sink(42) 64 0.5]
$ns_ at 2.3 "$inf68 start"
$ns_ at 2.35 "$inf68 stop"
$ns_ at 2.3 "$node_(33) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 33 Sends Request to it's Nearest  Access Point - 42 \""
set inf68 [attach-CBR-traffic $node_(32) $sink(42) 64 0.5]
$ns_ at 2.3 "$inf68 start"
$ns_ at 2.35 "$inf68 stop"
$ns_ at 2.3 "$node_(32) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 32 Sends Request to it's Nearest  Access Point - 42 \""
set inf68 [attach-CBR-traffic $node_(34) $sink(42) 64 0.5]
$ns_ at 2.3 "$inf68 start"
$ns_ at 2.35 "$inf68 stop"
$ns_ at 2.3 "$node_(34) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 34 Sends Request to it's Nearest  Access Point - 42 \""
set inf68 [attach-CBR-traffic $node_(2) $sink(42) 64 0.5]
$ns_ at 2.3 "$inf68 start"
$ns_ at 2.35 "$inf68 stop"
$ns_ at 2.3 "$node_(2) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 2 Sends Request to it's Nearest  Access Point - 42 \""
set inf68 [attach-CBR-traffic $node_(31) $sink(42) 64 0.5]
$ns_ at 2.3 "$inf68 start"
$ns_ at 2.35 "$inf68 stop"
$ns_ at 2.3 "$node_(31) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 31 Sends Request to it's Nearest  Access Point - 42 \""
set inf68 [attach-CBR-traffic $node_(36) $sink(42) 64 0.5]
$ns_ at 2.3 "$inf68 start"
$ns_ at 2.35 "$inf68 stop"
$ns_ at 2.3 "$node_(36) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 36 Sends Request to it's Nearest  Access Point - 42 \""
set inf68 [attach-CBR-traffic $node_(35) $sink(42) 64 0.5]
$ns_ at 2.3 "$inf68 start"
$ns_ at 2.35 "$inf68 stop"
$ns_ at 2.3 "$node_(35) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 35 Sends Request to it's Nearest  Access Point - 42 \""
set inf68 [attach-CBR-traffic $node_(26) $sink(42) 64 0.5]
$ns_ at 2.3 "$inf68 start"
$ns_ at 2.35 "$inf68 stop"
$ns_ at 2.3 "$node_(26) color blue"
$ns_ at 2.305 "$ns_ trace-annotate \" Client - 26 Sends Request to it's Nearest  Access Point - 42 \""
#----------------------------------- AP Sends data to Sink -------------------- 
set in37 [attach-CBR-traffic $node_(37) $sink(43) 64 0.05]
$ns_ at 2.8 "$in37 start"
$ns_ at 3.3 "$in37 stop"
set inw37 [attach-CBR-traffic $node_(43) $sink(0) 64 0.05]
$ns_ at 2.81 "$inw37 start"
$ns_ at 3.31 "$inw37 stop"
$ns_ at 2.8 "$node_(37) color red"
$ns_ at 3.3 "$node_(37) color blueee"
$ns_ at 2.805 "$ns_ trace-annotate \" Access Point - 37 Sends Details about it's  Clients to Sink - 0 \""
set in38 [attach-CBR-traffic $node_(38) $sink(44) 64 0.05]
$ns_ at 3.3 "$in38 start"
$ns_ at 3.8 "$in38 stop"
set inw38 [attach-CBR-traffic $node_(44) $sink(0) 64 0.05]
$ns_ at 3.31 "$inw38 start"
$ns_ at 3.81 "$inw38 stop"
$ns_ at 3.3 "$node_(38) color red"
$ns_ at 3.8 "$node_(38) color blueee"
$ns_ at 3.305 "$ns_ trace-annotate \" Access Point - 38 Sends Details about it's  Clients to Sink - 0 \""
set in39 [attach-CBR-traffic $node_(39) $sink(45) 64 0.05]
$ns_ at 3.8 "$in39 start"
$ns_ at 4.3 "$in39 stop"
set inw39 [attach-CBR-traffic $node_(45) $sink(0) 64 0.05]
$ns_ at 3.81 "$inw39 start"
$ns_ at 4.31 "$inw39 stop"
$ns_ at 3.8 "$node_(39) color red"
$ns_ at 4.3 "$node_(39) color blueee"
$ns_ at 3.805 "$ns_ trace-annotate \" Access Point - 39 Sends Details about it's  Clients to Sink - 0 \""
set in40 [attach-CBR-traffic $node_(40) $sink(46) 64 0.05]
$ns_ at 4.3 "$in40 start"
$ns_ at 4.8 "$in40 stop"
set inw40 [attach-CBR-traffic $node_(46) $sink(0) 64 0.05]
$ns_ at 4.31 "$inw40 start"
$ns_ at 4.81 "$inw40 stop"
$ns_ at 4.3 "$node_(40) color red"
$ns_ at 4.8 "$node_(40) color blueee"
$ns_ at 4.305 "$ns_ trace-annotate \" Access Point - 40 Sends Details about it's  Clients to Sink - 0 \""
set in41 [attach-CBR-traffic $node_(41) $sink(47) 64 0.05]
$ns_ at 4.8 "$in41 start"
$ns_ at 5.3 "$in41 stop"
set inw41 [attach-CBR-traffic $node_(47) $sink(0) 64 0.05]
$ns_ at 4.81 "$inw41 start"
$ns_ at 5.31 "$inw41 stop"
$ns_ at 4.8 "$node_(41) color red"
$ns_ at 5.3 "$node_(41) color blueee"
$ns_ at 4.805 "$ns_ trace-annotate \" Access Point - 41 Sends Details about it's  Clients to Sink - 0 \""
set in42 [attach-CBR-traffic $node_(42) $sink(48) 64 0.05]
$ns_ at 5.3 "$in42 start"
$ns_ at 5.8 "$in42 stop"
set inw42 [attach-CBR-traffic $node_(48) $sink(0) 64 0.05]
$ns_ at 5.31 "$inw42 start"
$ns_ at 5.81 "$inw42 stop"
$ns_ at 5.3 "$node_(42) color red"
$ns_ at 5.8 "$node_(42) color blueee"
$ns_ at 5.305 "$ns_ trace-annotate \" Access Point - 42 Sends Details about it's  Clients to Sink - 0 \""
