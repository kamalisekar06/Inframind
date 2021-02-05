
#----------------------------------- Client Sends Request to CH --------------------

set inf6350 [attach-CBR-traffic $node_(34) $sink(42) 64 0.05]
$ns_ at 18.0 "$inf6350 start"
$ns_ at 18.5 "$inf6350 stop"
$ns_ at 18.0 "$node_(34) color red"
$ns_ at 18.0 "$node_(34) label Source"
$ns_ at 18.005 "$ns_ trace-annotate \" Client - 34 Sends Request to  Access Point - 42 \""

#----------------------------------- CH Sends Request to CA --------------------

set in0 [attach-CBR-traffic $node_(42) $sink(48) 64 0.02]
$ns_ at 18.5 "$in0 start"
$ns_ at 19 "$in0 stop"
set inw0 [attach-CBR-traffic $node_(48) $sink(0) 64 0.02]
$ns_ at 18.51 "$inw0 start"
$ns_ at 19.01 "$inw0 stop"
$ns_ at 18.5 "$node_(42) color red"
$ns_ at 19 "$node_(42) color blueee"
$ns_ at 18.505 "$ns_ trace-annotate \" Access Point - 42 Sends about it's  Clients Request to Sink - 0 \""

#----------------- CA Responce to CH  and CH Responce to Client(CM) -------------

$ns_ at 20.5 "puts \"


\""

#---------------------- 1 Client ----------------- 
set in0 [attach-CBR-traffic $node_(0) $sink(48) 1024 0.5]
$ns_ at 19.5 "$in0 start"
$ns_ at 24.5 "$in0 stop"
set inw0 [attach-CBR-traffic $node_(48) $sink(42) 1024 0.5]
$ns_ at 19.51 "$inw0 start"
$ns_ at 24.51 "$inw0 stop"
$ns_ at 19.5 "$node_(42) color red"
$ns_ at 24.5 "$node_(42) color blueee"
$ns_ at 19.505 "$ns_ trace-annotate \"Sink - 0 Sends Responce for  Clients Request to Access Point - 42 \""
set inwa0 [attach-CBR-traffic $node_(42) $sink(34) 128 0.0520833]
$ns_ at 19.52 "$inwa0 start"
$ns_ at 24.51 "$inwa0 stop"
$ns_ at 20.5 "puts \"
 Client - 34\""
$ns_ at 20.5 "puts \"
File Size         -	12288\""
$ns_ at 20.5 "puts \"Channel Assignment  -	42\""
$ns_ at 20.5 "puts \"Capacity Assignment -	128\""
$ns_ at 20.5 "puts \"Fow Assignment      -	96\""
$ns_ at 20.5 "puts \"


\""
