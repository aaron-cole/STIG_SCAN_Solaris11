#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Failure to maintain system configurations may result in privilege escalation.

#STIG Identification
GrpID="V-47891"
GrpTitle="SRG-OS-000278"
RuleID="SV-60763r1_rule"
STIGID="SOL-11.1-020080"
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
