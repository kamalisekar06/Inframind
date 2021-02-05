#----------------------------------- AP Sends data to Sink -------------------- 
set in37 [attach-CBR-traffic $node_(0) $sink(43) 64 0.05]
$ns_ at 10.0 "$in37 start"
$ns_ at 10.5 "$in37 stop"
set inw37 [attach-CBR-traffic $node_(43) $sink(37) 64 0.05]
$ns_ at 10.01 "$inw37 start"
$ns_ at 10.51 "$inw37 stop"
$ns_ at 10.0 "$node_(37) color red"
$ns_ at 10.5 "$node_(37) color blueee"
$ns_ at 10.005 "$ns_ trace-annotate \"Sink - 0 Sends Responce about Channel Assignment to it's  Access Point - 37 \""
set in38 [attach-CBR-traffic $node_(0) $sink(44) 64 0.05]
$ns_ at 10.5 "$in38 start"
$ns_ at 11 "$in38 stop"
set inw38 [attach-CBR-traffic $node_(44) $sink(38) 64 0.05]
$ns_ at 10.51 "$inw38 start"
$ns_ at 11.01 "$inw38 stop"
$ns_ at 10.5 "$node_(38) color red"
$ns_ at 11 "$node_(38) color blueee"
$ns_ at 10.505 "$ns_ trace-annotate \"Sink - 0 Sends Responce about Channel Assignment to it's  Access Point - 38 \""
set in39 [attach-CBR-traffic $node_(0) $sink(45) 64 0.05]
$ns_ at 11 "$in39 start"
$ns_ at 11.5 "$in39 stop"
set inw39 [attach-CBR-traffic $node_(45) $sink(39) 64 0.05]
$ns_ at 11.01 "$inw39 start"
$ns_ at 11.51 "$inw39 stop"
$ns_ at 11 "$node_(39) color red"
$ns_ at 11.5 "$node_(39) color blueee"
$ns_ at 11.005 "$ns_ trace-annotate \"Sink - 0 Sends Responce about Channel Assignment to it's  Access Point - 39 \""
set in40 [attach-CBR-traffic $node_(0) $sink(46) 64 0.05]
$ns_ at 11.5 "$in40 start"
$ns_ at 12 "$in40 stop"
set inw40 [attach-CBR-traffic $node_(46) $sink(40) 64 0.05]
$ns_ at 11.51 "$inw40 start"
$ns_ at 12.01 "$inw40 stop"
$ns_ at 11.5 "$node_(40) color red"
$ns_ at 12 "$node_(40) color blueee"
$ns_ at 11.505 "$ns_ trace-annotate \"Sink - 0 Sends Responce about Channel Assignment to it's  Access Point - 40 \""
set in41 [attach-CBR-traffic $node_(0) $sink(47) 64 0.05]
$ns_ at 12 "$in41 start"
$ns_ at 12.5 "$in41 stop"
set inw41 [attach-CBR-traffic $node_(47) $sink(41) 64 0.05]
$ns_ at 12.01 "$inw41 start"
$ns_ at 12.51 "$inw41 stop"
$ns_ at 12 "$node_(41) color red"
$ns_ at 12.5 "$node_(41) color blueee"
$ns_ at 12.005 "$ns_ trace-annotate \"Sink - 0 Sends Responce about Channel Assignment to it's  Access Point - 41 \""
set in42 [attach-CBR-traffic $node_(0) $sink(48) 64 0.05]
$ns_ at 12.5 "$in42 start"
$ns_ at 13 "$in42 stop"
set inw42 [attach-CBR-traffic $node_(48) $sink(42) 64 0.05]
$ns_ at 12.51 "$inw42 start"
$ns_ at 13.01 "$inw42 stop"
$ns_ at 12.5 "$node_(42) color red"
$ns_ at 13 "$node_(42) color blueee"
$ns_ at 12.505 "$ns_ trace-annotate \"Sink - 0 Sends Responce about Channel Assignment to it's  Access Point - 42 \""
#----------------------------------- Client Sends Request to AP -------------------- 
set inf10 [attach-CBR-traffic $node_(37) $sink(2) 64 0.5]
$ns_ at 13.5 "$inf10 start"
$ns_ at 13.6 "$inf10 stop"
$ns_ at 13.5 "$node_(2) color blue"
$ns_ at 13.505 "$ns_ trace-annotate \" Access Point - 37 Sends Responce to it's  Client - 2 \""
set inf11 [attach-CBR-traffic $node_(37) $sink(5) 64 0.5]
$ns_ at 13.6 "$inf11 start"
$ns_ at 13.7 "$inf11 stop"
$ns_ at 13.6 "$node_(5) color blue"
$ns_ at 13.605 "$ns_ trace-annotate \" Access Point - 37 Sends Responce to it's  Client - 5 \""
set inf12 [attach-CBR-traffic $node_(37) $sink(1) 64 0.5]
$ns_ at 13.7 "$inf12 start"
$ns_ at 13.8 "$inf12 stop"
$ns_ at 13.7 "$node_(1) color blue"
$ns_ at 13.705 "$ns_ trace-annotate \" Access Point - 37 Sends Responce to it's  Client - 1 \""
set inf13 [attach-CBR-traffic $node_(37) $sink(3) 64 0.5]
$ns_ at 13.8 "$inf13 start"
$ns_ at 13.9 "$inf13 stop"
$ns_ at 13.8 "$node_(3) color blue"
$ns_ at 13.805 "$ns_ trace-annotate \" Access Point - 37 Sends Responce to it's  Client - 3 \""
set inf14 [attach-CBR-traffic $node_(37) $sink(4) 64 0.5]
$ns_ at 13.9 "$inf14 start"
$ns_ at 14 "$inf14 stop"
$ns_ at 13.9 "$node_(4) color blue"
$ns_ at 13.905 "$ns_ trace-annotate \" Access Point - 37 Sends Responce to it's  Client - 4 \""
set inf25 [attach-CBR-traffic $node_(38) $sink(12) 64 0.5]
$ns_ at 14 "$inf25 start"
$ns_ at 14.1 "$inf25 stop"
$ns_ at 14 "$node_(12) color blue"
$ns_ at 14.005 "$ns_ trace-annotate \" Access Point - 38 Sends Responce to it's  Client - 12 \""
set inf25 [attach-CBR-traffic $node_(38) $sink(11) 64 0.5]
$ns_ at 14 "$inf25 start"
$ns_ at 14.1 "$inf25 stop"
$ns_ at 14 "$node_(11) color blue"
$ns_ at 14.005 "$ns_ trace-annotate \" Access Point - 38 Sends Responce to it's  Client - 11 \""
set inf25 [attach-CBR-traffic $node_(38) $sink(7) 64 0.5]
$ns_ at 14 "$inf25 start"
$ns_ at 14.1 "$inf25 stop"
$ns_ at 14 "$node_(7) color blue"
$ns_ at 14.005 "$ns_ trace-annotate \" Access Point - 38 Sends Responce to it's  Client - 7 \""
set inf25 [attach-CBR-traffic $node_(38) $sink(8) 64 0.5]
$ns_ at 14 "$inf25 start"
$ns_ at 14.1 "$inf25 stop"
$ns_ at 14 "$node_(8) color blue"
$ns_ at 14.005 "$ns_ trace-annotate \" Access Point - 38 Sends Responce to it's  Client - 8 \""
set inf35 [attach-CBR-traffic $node_(39) $sink(13) 64 0.5]
$ns_ at 14 "$inf35 start"
$ns_ at 14.1 "$inf35 stop"
$ns_ at 14 "$node_(13) color blue"
$ns_ at 14.005 "$ns_ trace-annotate \" Access Point - 39 Sends Responce to it's  Client - 13 \""
set inf35 [attach-CBR-traffic $node_(39) $sink(18) 64 0.5]
$ns_ at 14 "$inf35 start"
$ns_ at 14.1 "$inf35 stop"
$ns_ at 14 "$node_(18) color blue"
$ns_ at 14.005 "$ns_ trace-annotate \" Access Point - 39 Sends Responce to it's  Client - 18 \""
set inf35 [attach-CBR-traffic $node_(39) $sink(23) 64 0.5]
$ns_ at 14 "$inf35 start"
$ns_ at 14.1 "$inf35 stop"
$ns_ at 14 "$node_(23) color blue"
$ns_ at 14.005 "$ns_ trace-annotate \" Access Point - 39 Sends Responce to it's  Client - 23 \""
set inf35 [attach-CBR-traffic $node_(39) $sink(17) 64 0.5]
$ns_ at 14 "$inf35 start"
$ns_ at 14.1 "$inf35 stop"
$ns_ at 14 "$node_(17) color blue"
$ns_ at 14.005 "$ns_ trace-annotate \" Access Point - 39 Sends Responce to it's  Client - 17 \""
set inf35 [attach-CBR-traffic $node_(39) $sink(16) 64 0.5]
$ns_ at 14 "$inf35 start"
$ns_ at 14.1 "$inf35 stop"
$ns_ at 14 "$node_(16) color blue"
$ns_ at 14.005 "$ns_ trace-annotate \" Access Point - 39 Sends Responce to it's  Client - 16 \""
set inf45 [attach-CBR-traffic $node_(40) $sink(24) 64 0.5]
$ns_ at 14 "$inf45 start"
$ns_ at 14.1 "$inf45 stop"
$ns_ at 14 "$node_(24) color blue"
$ns_ at 14.005 "$ns_ trace-annotate \" Access Point - 40 Sends Responce to it's  Client - 24 \""
set inf45 [attach-CBR-traffic $node_(40) $sink(23) 64 0.5]
$ns_ at 14 "$inf45 start"
$ns_ at 14.1 "$inf45 stop"
$ns_ at 14 "$node_(23) color blue"
$ns_ at 14.005 "$ns_ trace-annotate \" Access Point - 40 Sends Responce to it's  Client - 23 \""
set inf45 [attach-CBR-traffic $node_(40) $sink(19) 64 0.5]
$ns_ at 14 "$inf45 start"
$ns_ at 14.1 "$inf45 stop"
$ns_ at 14 "$node_(19) color blue"
$ns_ at 14.005 "$ns_ trace-annotate \" Access Point - 40 Sends Responce to it's  Client - 19 \""
set inf45 [attach-CBR-traffic $node_(40) $sink(21) 64 0.5]
$ns_ at 14 "$inf45 start"
$ns_ at 14.1 "$inf45 stop"
$ns_ at 14 "$node_(21) color blue"
$ns_ at 14.005 "$ns_ trace-annotate \" Access Point - 40 Sends Responce to it's  Client - 21 \""
set inf45 [attach-CBR-traffic $node_(40) $sink(22) 64 0.5]
$ns_ at 14 "$inf45 start"
$ns_ at 14.1 "$inf45 stop"
$ns_ at 14 "$node_(22) color blue"
$ns_ at 14.005 "$ns_ trace-annotate \" Access Point - 40 Sends Responce to it's  Client - 22 \""
set inf55 [attach-CBR-traffic $node_(41) $sink(25) 64 0.5]
$ns_ at 14 "$inf55 start"
$ns_ at 14.1 "$inf55 stop"
$ns_ at 14 "$node_(25) color blue"
$ns_ at 14.005 "$ns_ trace-annotate \" Access Point - 41 Sends Responce to it's  Client - 25 \""
set inf55 [attach-CBR-traffic $node_(41) $sink(29) 64 0.5]
$ns_ at 14 "$inf55 start"
$ns_ at 14.1 "$inf55 stop"
$ns_ at 14 "$node_(29) color blue"
$ns_ at 14.005 "$ns_ trace-annotate \" Access Point - 41 Sends Responce to it's  Client - 29 \""
set inf55 [attach-CBR-traffic $node_(41) $sink(32) 64 0.5]
$ns_ at 14 "$inf55 start"
$ns_ at 14.1 "$inf55 stop"
$ns_ at 14 "$node_(32) color blue"
$ns_ at 14.005 "$ns_ trace-annotate \" Access Point - 41 Sends Responce to it's  Client - 32 \""
set inf55 [attach-CBR-traffic $node_(41) $sink(30) 64 0.5]
$ns_ at 14 "$inf55 start"
$ns_ at 14.1 "$inf55 stop"
$ns_ at 14 "$node_(30) color blue"
$ns_ at 14.005 "$ns_ trace-annotate \" Access Point - 41 Sends Responce to it's  Client - 30 \""
set inf55 [attach-CBR-traffic $node_(41) $sink(19) 64 0.5]
$ns_ at 14 "$inf55 start"
$ns_ at 14.1 "$inf55 stop"
$ns_ at 14 "$node_(19) color blue"
$ns_ at 14.005 "$ns_ trace-annotate \" Access Point - 41 Sends Responce to it's  Client - 19 \""
set inf65 [attach-CBR-traffic $node_(42) $sink(33) 64 0.5]
$ns_ at 14 "$inf65 start"
$ns_ at 14.1 "$inf65 stop"
$ns_ at 14 "$node_(33) color blue"
$ns_ at 14.005 "$ns_ trace-annotate \" Access Point - 42 Sends Responce to it's  Client - 33 \""
set inf65 [attach-CBR-traffic $node_(42) $sink(32) 64 0.5]
$ns_ at 14 "$inf65 start"
$ns_ at 14.1 "$inf65 stop"
$ns_ at 14 "$node_(32) color blue"
$ns_ at 14.005 "$ns_ trace-annotate \" Access Point - 42 Sends Responce to it's  Client - 32 \""
set inf65 [attach-CBR-traffic $node_(42) $sink(34) 64 0.5]
$ns_ at 14 "$inf65 start"
$ns_ at 14.1 "$inf65 stop"
$ns_ at 14 "$node_(34) color blue"
$ns_ at 14.005 "$ns_ trace-annotate \" Access Point - 42 Sends Responce to it's  Client - 34 \""
set inf65 [attach-CBR-traffic $node_(42) $sink(2) 64 0.5]
$ns_ at 14 "$inf65 start"
$ns_ at 14.1 "$inf65 stop"
$ns_ at 14 "$node_(2) color blue"
$ns_ at 14.005 "$ns_ trace-annotate \" Access Point - 42 Sends Responce to it's  Client - 2 \""
set inf65 [attach-CBR-traffic $node_(42) $sink(31) 64 0.5]
$ns_ at 14 "$inf65 start"
$ns_ at 14.1 "$inf65 stop"
$ns_ at 14 "$node_(31) color blue"
$ns_ at 14.005 "$ns_ trace-annotate \" Access Point - 42 Sends Responce to it's  Client - 31 \""
