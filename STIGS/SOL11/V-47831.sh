#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Without auditing, individual system accesses cannot be tracked, and malicious activity cannot be detected and traced back to an individual account.

#STIG Identification
GrpID="V-47831"
GrpTitle="SRG-OS-999999"
RuleID="SV-60705r1_rule"
STIGID="SOL-11.1-010360"
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
 for USER in $(logins | awk '{print $1}' | grep -v root); do
  if userattr audit_flags $USER >> /dev/null; then
   echo "$USER special audit flags found - $(userattr audit_flags $USER)" >> $Results
   ((scorecheck+=1))
  fi
 done
fi
  
if [ "$scorecheck" != 0 ]; then
 echo "Fail" >> $Results 
else 
 echo "Pass" >> $Results
fi
