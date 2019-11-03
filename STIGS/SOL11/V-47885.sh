#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Failure to maintain system configurations may result in privilege escalation.

#STIG Identification
GrpID="V-47885"
GrpTitle="SRG-OS-000256"
RuleID="SV-60757r1_rule"
STIGID="SOL-11.1-020030"
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

pkg property | grep signature-policy >> $Results
if [ "$(pkg property | grep signature-policy | awk '{print $2}')" = "verify" ]; then
 echo "Pass" >> $Results
else
 echo "Fail" >> $Results
fi
