#----------------- Aho Weinberger Kernighan (AWK) -------------------------

BEGIN {
p=0
r=0
s=0
}
{

if(FILENAME=="Input") 
  if($1>0 && $1<37)
  {
   src[p,1]=$1
   src[p++,2]=$3
  }

if(FILENAME=="ctemp") 
 {
  tm =$1
  pks=$2
  itv=$3
  edt=$4
 }

if(FILENAME=="chan_Assign.tr") 
  if($1>0 && $1<37)
  {
   chan[r,1]=$1
   chan[r++,2]=$2
  }


if(FILENAME=="NNode.tr" ) 
 if($1>=0 && $1<=100) 
 {
  n[s,1]  =$1
  n[s,2]  =$2
  n[s++,3]=$5
 }

}


END {

#----------- Ascending order  ----------------
 for(x=0;x<s;x++)
 {
  for(y=x+1;y<s;y++)
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

 i=0
 print "\n#----------------------------------- Client Sends Request to CH --------------------\n" > "assign.tcl"

 for(m=0;m<p;m++)
  for(x=0;x<s;x++)
  {
   if(n[x,1]==37 && src[m,1]==n[x,2] && n[x,3]<190 )
   {
   ap[i++]=n[x,1]
   print "set inf1"y" [attach-CBR-traffic $node_("n[x,2]") $sink("n[x,1]") "pks" "itv"]" > "assign.tcl"
   print "$ns_ at "tm" \"$inf1"y" start\"" > "assign.tcl"
   print "$ns_ at "tm+edt" \"$inf1"y" stop\"" > "assign.tcl"
   print "$ns_ at "tm" \"$node_("n[x,2]") color red\"" > "assign.tcl" 
   print "$ns_ at "tm" \"$node_("n[x,2]") label Source\"" > "assign.tcl" 
   print ("$ns_ at "tm+0.005" \"$ns_ trace-annotate \\\" Client - "n[x,2]" Sends Request to  Access Point - "   n[x,1]" \\\"\"") > "assign.tcl"
   }
   if(n[x,1]==38 && src[m,1]==n[x,2] && n[x,3]<190 )
   {
   ap[i++]=n[x,1]
   print "set inf2"y" [attach-CBR-traffic $node_("n[x,2]") $sink("n[x,1]") "pks" "itv"]" > "assign.tcl"
   print "$ns_ at "tm" \"$inf2"y" start\"" > "assign.tcl"
   print "$ns_ at "tm+edt" \"$inf2"y" stop\"" > "assign.tcl"
   print "$ns_ at "tm" \"$node_("n[x,2]") color red\"" > "assign.tcl" 
   print "$ns_ at "tm" \"$node_("n[x,2]") label Source\"" > "assign.tcl" 
   print ("$ns_ at "tm+0.005" \"$ns_ trace-annotate \\\" Client - "n[x,2]" Sends Request to  Access Point - "   n[x,1]" \\\"\"") > "assign.tcl"
   }
  if(n[x,1]==39 && src[m,1]==n[x,2] && n[x,3]<190 )
  {
   ap[i++]=n[x,1]
   print "set inf3"y" [attach-CBR-traffic $node_("n[x,2]") $sink("n[x,1]") "pks" "itv"]" > "assign.tcl"
   print "$ns_ at "tm" \"$inf3"y" start\"" > "assign.tcl"
   print "$ns_ at "tm+edt" \"$inf3"y" stop\"" > "assign.tcl"
   print "$ns_ at "tm" \"$node_("n[x,2]") color red\"" > "assign.tcl" 
   print "$ns_ at "tm" \"$node_("n[x,2]") label Source\"" > "assign.tcl" 
   print ("$ns_ at "tm+0.005" \"$ns_ trace-annotate \\\" Client - "n[x,2]" Sends Request to  Access Point - "   n[x,1]" \\\"\"") > "assign.tcl"
   }
   if(n[x,1]==40 && src[m,1]==n[x,2] && n[x,3]<190 )
   {
   ap[i++]=n[x,1]
   print "set inf4"y" [attach-CBR-traffic $node_("n[x,2]") $sink("n[x,1]") "pks" "itv"]" > "assign.tcl"
   print "$ns_ at "tm" \"$inf4"y" start\"" > "assign.tcl"
   print "$ns_ at "tm+edt" \"$inf4"y" stop\"" > "assign.tcl"
   print "$ns_ at "tm" \"$node_("n[x,2]") color red\"" > "assign.tcl" 
   print "$ns_ at "tm" \"$node_("n[x,2]") label Source\"" > "assign.tcl" 
   print ("$ns_ at "tm+0.005" \"$ns_ trace-annotate \\\" Client - "n[x,2]" Sends Request to  Access Point - "   n[x,1]" \\\"\"") > "assign.tcl"
   }
   if(n[x,1]==41 && src[m,1]==n[x,2] && n[x,3]<190 )
   { 
   ap[i++]=n[x,1]
   print "set inf5"y" [attach-CBR-traffic $node_("n[x,2]") $sink("n[x,1]") "pks" "itv"]" > "assign.tcl"
   print "$ns_ at "tm" \"$inf5"y" start\"" > "assign.tcl"
   print "$ns_ at "tm+edt" \"$inf5"y" stop\"" > "assign.tcl"
   print "$ns_ at "tm" \"$node_("n[x,2]") color red\"" > "assign.tcl" 
   print "$ns_ at "tm" \"$node_("n[x,2]") label Source\"" > "assign.tcl" 
   print ("$ns_ at "tm+0.005" \"$ns_ trace-annotate \\\" Client - "n[x,2]" Sends Request to  Access Point - "   n[x,1]"\\\"\"") > "assign.tcl"
   }
   if(n[x,1]==42 && src[m,1]==n[x,2] && n[x,3]<190 )
   {
   ap[i++]=n[x,1]
   print "set inf6"y" [attach-CBR-traffic $node_("n[x,2]") $sink("n[x,1]") "pks" "itv"]" > "assign.tcl"
   print "$ns_ at "tm" \"$inf6"y" start\"" > "assign.tcl"
   print "$ns_ at "tm+edt" \"$inf6"y" stop\"" > "assign.tcl"
   print "$ns_ at "tm" \"$node_("n[x,2]") color red\"" > "assign.tcl" 
   print "$ns_ at "tm" \"$node_("n[x,2]") label Source\"" > "assign.tcl" 
   print ("$ns_ at "tm+0.005" \"$ns_ trace-annotate \\\" Client - "n[x,2]" Sends Request to  Access Point - "   n[x,1]" \\\"\"") > "assign.tcl"
   }
  }
 
  tm=tm+0.5
  itval=0.5
  itv=0.02

 print "\n#----------------------------------- CH Sends Request to CA --------------------\n" > "assign.tcl"  

 for(m=0;m<i;m++)
 {
   print "set in"m" [attach-CBR-traffic $node_("ap[m]") $sink("ap[m]+6") "pks" "itv"]" > "assign.tcl" 
   print "$ns_ at "tm" \"$in"m" start\"" > "assign.tcl" 
   print "$ns_ at "tm+itval" \"$in"m" stop\"" > "assign.tcl" 

   print "set inw"m" [attach-CBR-traffic $node_("ap[m]+6") $sink(0) "pks" "itv"]" > "assign.tcl" 
   print "$ns_ at "tm+0.01" \"$inw"m" start\"" > "assign.tcl" 
   print "$ns_ at "tm+itval+0.01" \"$inw"m" stop\"" > "assign.tcl" 

   print "$ns_ at "tm" \"$node_("ap[m]") color red\"" > "assign.tcl"  
   print "$ns_ at "tm+itval" \"$node_("ap[m]") color blueee\"" > "assign.tcl"  
   print ("$ns_ at "tm+0.005" \"$ns_ trace-annotate \\\" Access Point - "ap[m]" Sends about it's  Clients Request to Sink - 0 \\\"\"") > "assign.tcl" 
 }


 tm=tm+1.0
 itval=5
 itv=0.5
 pks=1024
 fl1=0

 #------- Set Flow Assignment ------
 for(j1=0;j1<p;j1++)
  for(j2=0;j2<r;j2++)
   if(src[j1,1]==chan[j2,1])
   {
    np=src[j1,2]/chan[j2,2]
    np_itv[fl1]=5/np
    np_pkt[fl1]=chan[j2,2]
    flw_sze[fl1,1]=src[j1,2]
    flw_sze[fl1++,2]=np
   }


 print "\n#----------------- CA Responce to CH  and CH Responce to Client(CM) -------------\n" > "assign.tcl"  
 print "$ns_ at "tm+1" \"puts \\\"\n\n\n\\\"\"" > "assign.tcl" 

 for(m=0;m<i;m++)
 {
   print "\n#---------------------- "m+1" Client ----------------- "  > "assign.tcl" 
   print "set in"m" [attach-CBR-traffic $node_(0) $sink("ap[m]+6") "pks" "itv"]" > "assign.tcl" 
   print "$ns_ at "tm" \"$in"m" start\"" > "assign.tcl" 
   print "$ns_ at "tm+itval" \"$in"m" stop\"" > "assign.tcl" 

   print "set inw"m" [attach-CBR-traffic $node_("ap[m]+6") $sink("ap[m]") "pks" "itv"]" > "assign.tcl" 
   print "$ns_ at "tm+0.01" \"$inw"m" start\"" > "assign.tcl" 
   print "$ns_ at "tm+itval+0.01" \"$inw"m" stop\"" > "assign.tcl" 

   print "$ns_ at "tm" \"$node_("ap[m]") color red\"" > "assign.tcl"  
   print "$ns_ at "tm+itval" \"$node_("ap[m]") color blueee\"" > "assign.tcl"  
   print ("$ns_ at "tm+0.005" \"$ns_ trace-annotate \\\"Sink - 0 Sends Responce for  Clients Request to Access Point - "ap[m]" \\\"\"") > "assign.tcl" 

   print "set inwa"m" [attach-CBR-traffic $node_("ap[m]") $sink("src[m,1]") "np_pkt[m]" "np_itv[m]"]" > "assign.tcl" 
   print "$ns_ at "tm+0.02" \"$inwa"m" start\"" > "assign.tcl" 
   print "$ns_ at "tm+itval+0.01" \"$inwa"m" stop\"" > "assign.tcl" 

   print "$ns_ at "tm+1" \"puts \\\"\n Client - "src[m,1]"\\\"\"" > "assign.tcl" 
   print "$ns_ at "tm+1" \"puts \\\"\nFile Size         -\t"flw_sze[m,1]"\\\"\"" > "assign.tcl" 
   print "$ns_ at "tm+1" \"puts \\\"Channel Assignment  -\t"ap[m]"\\\"\"" > "assign.tcl" 
   print "$ns_ at "tm+1" \"puts \\\"Capacity Assignment -\t"np_pkt[m]"\\\"\"" > "assign.tcl" 
   print "$ns_ at "tm+1" \"puts \\\"Fow Assignment      -\t"flw_sze[m,2]"\\\"\"" > "assign.tcl" 
 }


      print "$ns_ at "tm+1" \"puts \\\"\n\n\n\\\"\"" > "assign.tcl" 

}
