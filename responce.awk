#----------------- Aho Weinberger Kernighan (AWK) -------------------------

BEGIN {
p=0
}
{

if(FILENAME=="btemp") 
{
 pks=$1
 tm=$2
 itval=$3
 itv=$4
}


if(FILENAME=="NNode.tr" ) 
 if($1>=0 && $1<=100) 
 {
  n[p,1]  =$1
  n[p,2]  =$2
  n[p++,3]=$5
 }

}


END {

#----------- Ascending order  ----------------
 for(x=0;x<p;x++)
 {
  for(y=x+1;y<p;y++)
  {
   
   if(n[x,3]>n[y,3] && n[x,1]==n[y,1])
   {
    temp1=n[x,3]
    n[x,3]=n[y,3]
    n[y,3]=temp1

    temp2=n[x,2]
    n[x,2]=n[y,2]
    n[y,2]=temp2
   }
  }
 }

print "#----------------------------------- AP Sends data to Sink -------------------- " > "resp.tcl"

  for (i=37;i<43;i++)
  { 
   print "set in"i" [attach-CBR-traffic $node_(0) $sink("i+6") "pks" "itv"]" > "resp.tcl"
   print "$ns_ at "tm" \"$in"i" start\"" > "resp.tcl"
   print "$ns_ at "tm+itval" \"$in"i" stop\"" > "resp.tcl"

   print "set inw"i" [attach-CBR-traffic $node_("i+6") $sink("i") "pks" "itv"]" > "resp.tcl"
   print "$ns_ at "tm+0.01" \"$inw"i" start\"" > "resp.tcl"
   print "$ns_ at "tm+itval+0.01" \"$inw"i" stop\"" > "resp.tcl"

   print "$ns_ at "tm" \"$node_("i") color red\"" > "resp.tcl" 
   print "$ns_ at "tm+itval" \"$node_("i") color blueee\"" > "resp.tcl" 
   print ("$ns_ at "tm+0.005" \"$ns_ trace-annotate \\\"Sink - 0 Sends Responce about Channel Assignment to it's  Access Point - "i" \\\"\"") > "resp.tcl"

  tm=tm+0.5

  }
 
 
  tm=tm+0.5
  itval=0.1
  itv=0.5

y=0

 print "#----------------------------------- Client Sends Request to AP -------------------- " > "resp.tcl"
 for(x=0;x<p;x++)
 {
  if(n[x,1]==37 && n[x,3]<190)
  {
  clr=1
  print "set inf1"y" [attach-CBR-traffic $node_("n[x,1]") $sink("n[x,2]") "pks" "itv"]" > "resp.tcl"
  print "$ns_ at "tm" \"$inf1"y" start\"" > "resp.tcl"
  print "$ns_ at "tm+itval" \"$inf1"y" stop\"" > "resp.tcl"
  print "$ns_ at "tm" \"$node_("n[x,2]") color blue\"" > "resp.tcl" 
  print ("$ns_ at "tm+0.005" \"$ns_ trace-annotate \\\" Access Point - "n[x,1]" Sends Responce to it's  Client - "  n[x,2]" \\\"\"") > "resp.tcl"
  }
  if(n[x,1]==38 && n[x,3]<190)
  {
  print "set inf2"y" [attach-CBR-traffic $node_("n[x,1]") $sink("n[x,2]") "pks" "itv"]" > "resp.tcl"
  print "$ns_ at "tm" \"$inf2"y" start\"" > "resp.tcl"
  print "$ns_ at "tm+itval" \"$inf2"y" stop\"" > "resp.tcl"
  print "$ns_ at "tm" \"$node_("n[x,2]") color blue\"" > "resp.tcl" 
  print ("$ns_ at "tm+0.005" \"$ns_ trace-annotate \\\" Access Point - "n[x,1]" Sends Responce to it's  Client - "  n[x,2]" \\\"\"") > "resp.tcl"
  }
  if(n[x,1]==39 && n[x,3]<190)
  {
  print "set inf3"y" [attach-CBR-traffic $node_("n[x,1]") $sink("n[x,2]") "pks" "itv"]" > "resp.tcl"
  print "$ns_ at "tm" \"$inf3"y" start\"" > "resp.tcl"
  print "$ns_ at "tm+itval" \"$inf3"y" stop\"" > "resp.tcl"
  print "$ns_ at "tm" \"$node_("n[x,2]") color blue\"" > "resp.tcl" 
  print ("$ns_ at "tm+0.005" \"$ns_ trace-annotate \\\" Access Point - "n[x,1]" Sends Responce to it's  Client - "  n[x,2]" \\\"\"") > "resp.tcl"
  }
  if(n[x,1]==40 && n[x,3]<190)
  {
  print "set inf4"y" [attach-CBR-traffic $node_("n[x,1]") $sink("n[x,2]") "pks" "itv"]" > "resp.tcl"
  print "$ns_ at "tm" \"$inf4"y" start\"" > "resp.tcl"
  print "$ns_ at "tm+itval" \"$inf4"y" stop\"" > "resp.tcl"
  print "$ns_ at "tm" \"$node_("n[x,2]") color blue\"" > "resp.tcl" 
  print ("$ns_ at "tm+0.005" \"$ns_ trace-annotate \\\" Access Point - "n[x,1]" Sends Responce to it's  Client - "  n[x,2]" \\\"\"") > "resp.tcl"
  }
  if(n[x,1]==41 && n[x,3]<190)
  { 
  print "set inf5"y" [attach-CBR-traffic $node_("n[x,1]") $sink("n[x,2]") "pks" "itv"]" > "resp.tcl"
  print "$ns_ at "tm" \"$inf5"y" start\"" > "resp.tcl"
  print "$ns_ at "tm+itval" \"$inf5"y" stop\"" > "resp.tcl"
  print "$ns_ at "tm" \"$node_("n[x,2]") color blue\"" > "resp.tcl" 
  print ("$ns_ at "tm+0.005" \"$ns_ trace-annotate \\\" Access Point - "n[x,1]" Sends Responce to it's  Client - "  n[x,2]" \\\"\"") > "resp.tcl"
  }
  if(n[x,1]==42 && n[x,3]<190)
  {
  print "set inf6"y" [attach-CBR-traffic $node_("n[x,1]") $sink("n[x,2]") "pks" "itv"]" > "resp.tcl"
  print "$ns_ at "tm" \"$inf6"y" start\"" > "resp.tcl"
  print "$ns_ at "tm+itval" \"$inf6"y" stop\"" > "resp.tcl"
  print "$ns_ at "tm" \"$node_("n[x,2]") color blue\"" > "resp.tcl" 
  print ("$ns_ at "tm+0.005" \"$ns_ trace-annotate \\\" Access Point - "n[x,1]" Sends Responce to it's  Client - "  n[x,2]" \\\"\"") > "resp.tcl"
  }

  if(clr==1)
  {
    y++
    tm=tm+0.1
    clr=0
  }
 }


  

}
