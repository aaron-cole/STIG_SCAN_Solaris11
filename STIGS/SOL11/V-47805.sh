#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Without auditing, malicious activity cannot be detected.

#STIG Identification
GrpID="V-47805"
GrpTitle="SRG-OS-999999"
RuleID="SV-60681r1_rule"
STIGID="SOL-11.1-010220"
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
 if  pfexec auditconfig -getflags | grep active |sed s/'active user default audit flags ='// | grep fd >> $Results; then
  if pfexec auditconfig -getnaflags | grep active |sed s/'active user default audit flags ='// | grep fd >> $Results; then
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
  echo "Audit Policy is not set for file deletion" >> $Results
  echo "Fail" >> $Results
 fi
fi
