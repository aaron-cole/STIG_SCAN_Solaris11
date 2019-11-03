#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Solaris non-global zones can be assigned physical hardware devices. This increases the risk of such a non-global zone having the capability to compromise the global zone.

#STIG Identification
GrpID="V-47841"
GrpTitle="SRG-OS-999999"
RuleID="SV-60715r1_rule"
STIGID="SOL-11.1-100030"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##

#Check
scorecheck=0

if [ "$(zonename)" != "global" ]; then
 echo "This is a zone - $(zonename)" >> $Results
 echo "NA" >> $Results
else
 echo "List of zones on server - $(zoneadm list)" >> $Results
 if zoneadm list | grep -v global >> /dev/null; then
  for ZONENAME in $(zoneadm list | grep -v global); do
   if zonecfg -z $ZONENAME info | grep dev >> $Results; then
    ((scorecheck+=1))
   fi
  done
 else
  echo "No zones found" >> $Results
 fi
fi

if [ "$scorecheck" != 0 ]; then
 echo "Fail" >> $Results 
else 
 echo "Pass" >> $Results
fi