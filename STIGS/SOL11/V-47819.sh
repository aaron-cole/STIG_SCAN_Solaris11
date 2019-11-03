#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Without auditing, individual system accesses cannot be tracked, and malicious activity cannot be detected and traced back to an individual account.

#STIG Identification
GrpID="V-47819"
GrpTitle="SRG-OS-000032"
RuleID="SV-60695r1_rule"
STIGID="SOL-11.1-010310"
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

if [ "$(zonename)" != "global" ]; then
 echo "This is a zone - $(zonename)" >> $Results
 echo "NA" >> $Results
else
 if  pfexec auditconfig -getflags | grep active |sed s/'active user default audit flags ='// | grep lo >> $Results; then
  if pfexec auditconfig -getnaflags | grep active |sed s/'active user default audit flags ='// | grep lo >> $Results; then
   if pfexec auditconfig -getpolicy | grep active | grep argv >> $Results; then
    echo "Pass" >> $Results
   else
    echo "Audit Policy is not set to collect command line arguments" >> $Results
	echo "Fail" >> $Results
   fi
  else
   echo "Audit Policy is not set for non-attributable flags" >> $Results
   echo "Fail" >> $Results
  fi
 else
  echo "Audit Policy is not set correctly for login or logout" >> $Results
  echo "Fail" >> $Results
 fi
fi