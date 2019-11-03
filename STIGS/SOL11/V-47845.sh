#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Proper alerts to system administrators and IA officials of audit failures ensure a timely response to critical system issues.

#STIG Identification
GrpID="V-47845"
GrpTitle="SRG-OS-000046"
RuleID="SV-60719r1_rule"
STIGID="SOL-11.1-010390"
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
 /usr/lib/sendmail -bv audit_warn >> $Results
 if /usr/lib/sendmail -bv audit_warn | grep "User Unknown" >> /dev/null; then
  echo "Fail" >> $Results
 else
  echo "Pass" >> $Results
 fi
fi