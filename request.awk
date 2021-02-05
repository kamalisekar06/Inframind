#----------------- Aho Weinberger Kernighan (AWK) -------------------------

BEGIN {
p=0

}
{

if(FILENAME=="atemp") 
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

 #-------------- Random Packet Size Generate ---------------------
 ch[0]=512 
 ch[1]=256
 ch[2]=128
 print "-----------------------" > "chan_Assign.tr"
 print "Client\tPacket_Size" > "chan_Assign.tr"
 print "-----------------------" > "chan_Assign.tr"
 for(i=1;i<37;i++)
 {
  rep=1
  while(rep) 
  {
   ran=int(rand()*10)
   if(ran<3)
    rep=0
  }
  print i "\t" ch[ran] > "chan_Assign.tr"
 }

 y=0
 z=0

 print "#----------------------------------- Client Sends Request to AP -------------------- " > "req.tcl"
 for(x=0;x<p;x++)
 {
  if(n[x,1]==37 && n[x,2]!=0 && n[x,2]<37)
  {
  clr=1
  a[z++]=n[x,2]
  print "set inf1"y" [attach-CBR-traffic $node_("n[x,2]") $sink("n[x,1]") "pks" "itv"]" > "req.tcl"
  print "$ns_ at "tm" \"$inf1"y" start\"" > "req.tcl"
  print "$ns_ at "tm+itval" \"$inf1"y" stop\"" > "req.tcl"
  print "$ns_ at "tm" \"$node_("n[x,2]") color blue\"" > "req.tcl" 
  print ("$ns_ at "tm+0.005" \"$ns_ trace-annotate \\\" Client - "n[x,2]" Sends Request to it's Nearest  Access Point - "   n[x,1]" \\\"\"") > "req.tcl"
  }
  if(n[x,1]==38 && n[x,2]!=0 && n[x,2]<37)
  {
  a[z++]=n[x,2]
  print "set inf2"y" [attach-CBR-traffic $node_("n[x,2]") $sink("n[x,1]") "pks" "itv"]" > "req.tcl"
  print "$ns_ at "tm" \"$inf2"y" start\"" > "req.tcl"
  print "$ns_ at "tm+itval" \"$inf2"y" stop\"" > "req.tcl"
  print "$ns_ at "tm" \"$node_("n[x,2]") color blue\"" > "req.tcl" 
  print ("$ns_ at "tm+0.005" \"$ns_ trace-annotate \\\" Client - "n[x,2]" Sends Request to it's Nearest  Access Point - "   n[x,1]" \\\"\"") > "req.tcl"
  }
  if(n[x,1]==39 && n[x,2]!=0 && n[x,2]<37)
  {
  a[z++]=n[x,2]
  print "set inf3"y" [attach-CBR-traffic $node_("n[x,2]") $sink("n[x,1]") "pks" "itv"]" > "req.tcl"
  print "$ns_ at "tm" \"$inf3"y" start\"" > "req.tcl"
  print "$ns_ at "tm+itval" \"$inf3"y" stop\"" > "req.tcl"
  print "$ns_ at "tm" \"$node_("n[x,2]") color blue\"" > "req.tcl" 
  print ("$ns_ at "tm+0.005" \"$ns_ trace-annotate \\\" Client - "n[x,2]" Sends Request to it's Nearest  Access Point - "   n[x,1]" \\\"\"") > "req.tcl"
  }
  if(n[x,1]==40 && n[x,2]!=0 && n[x,2]<37)
  {
  
  a[z++]=n[x,2]
  print "set inf4"y" [attach-CBR-traffic $node_("n[x,2]") $sink("n[x,1]") "pks" "itv"]" > "req.tcl"
  print "$ns_ at "tm" \"$inf4"y" start\"" > "req.tcl"
  print "$ns_ at "tm+itval" \"$inf4"y" stop\"" > "req.tcl"
  print "$ns_ at "tm" \"$node_("n[x,2]") color blue\"" > "req.tcl" 
  print ("$ns_ at "tm+0.005" \"$ns_ trace-annotate \\\" Client - "n[x,2]" Sends Request to it's Nearest  Access Point - "   n[x,1]" \\\"\"") > "req.tcl"
  }
  if(n[x,1]==41 && n[x,2]!=0 && n[x,2]<37)
  { 
  a[z++]=n[x,2]
  print "set inf5"y" [attach-CBR-traffic $node_("n[x,2]") $sink("n[x,1]") "pks" "itv"]" > "req.tcl"
  print "$ns_ at "tm" \"$inf5"y" start\"" > "req.tcl"
  print "$ns_ at "tm+itval" \"$inf5"y" stop\"" > "req.tcl"
  print "$ns_ at "tm" \"$node_("n[x,2]") color blue\"" > "req.tcl" 
  print ("$ns_ at "tm+0.005" \"$ns_ trace-annotate \\\" Client - "n[x,2]" Sends Request to it's Nearest  Access Point - "   n[x,1]"\\\"\"") > "req.tcl"
  }
  if(n[x,1]==42 && n[x,2]!=0 && n[x,2]<37)
  {
  a[z++]=n[x,2]
  print "set inf6"y" [attach-CBR-traffic $node_("n[x,2]") $sink("n[x,1]") "pks" "itv"]" > "req.tcl"
  print "$ns_ at "tm" \"$inf6"y" start\"" > "req.tcl"
  print "$ns_ at "tm+itval" \"$inf6"y" stop\"" > "req.tcl"
  print "$ns_ at "tm" \"$node_("n[x,2]") color blue\"" > "req.tcl" 
  print ("$ns_ at "tm+0.005" \"$ns_ trace-annotate \\\" Client - "n[x,2]" Sends Request to it's Nearest  Access Point - "   n[x,1]" \\\"\"") > "req.tcl"
  }

  # ------------ Give the region color ------------
  
  if(clr==1)
  {
    y++
    tm=tm+0.1
    clr=0
    for(s1=0;s1<z-1;s1++) #check chain format
      if(a[z-1]==a[s1])
      { 
       print "$ns_ at "tm+0.04" \"$node_("a[s1]") color black\"" > "req.tcl" 
       break
      }
  }
 }

  tm=tm+0.5
  itval=0.5
  itv=0.05

  print "#----------------------------------- AP Sends data to Sink -------------------- " > "req.tcl"

  for (i=37;i<43;i++)
  { 
   print "set in"i" [attach-CBR-traffic $node_("i") $sink("i+6") "pks" "itv"]" > "req.tcl"
   print "$ns_ at "tm" \"$in"i" start\"" > "req.tcl"
   print "$ns_ at "tm+itval" \"$in"i" stop\"" > "req.tcl"

   print "set inw"i" [attach-CBR-traffic $node_("i+6") $sink(0) "pks" "itv"]" > "req.tcl"
   print "$ns_ at "tm+0.01" \"$inw"i" start\"" > "req.tcl"
   print "$ns_ at "tm+itval+0.01" \"$inw"i" stop\"" > "req.tcl"

   print "$ns_ at "tm" \"$node_("i") color red\"" > "req.tcl" 
   print "$ns_ at "tm+itval" \"$node_("i") color blueee\"" > "req.tcl" 
   print ("$ns_ at "tm+0.005" \"$ns_ trace-annotate \\\" Access Point - "i" Sends Details about it's  Clients to Sink - 0 \\\"\"") > "req.tcl"

  tm=tm+0.5

  }

}
