#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#The system should not allow users to log in as the root user directly, as audited actions would be non-attributable to a specific user.

#STIG Identification
GrpID="V-48103"
GrpTitle="SRG-OS-999999"
RuleID="SV-60975r1_rule"
STIGID="SOL-11.1-040360"
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

grep "^PermitRootLogin " /etc/ssh/sshd_config >> $Results

if [ "$(grep "^PermitRootLogin " /etc/ssh/sshd_config | awk '{print $2}')" = "no" ]; then
 echo "Pass" >> $Results
else
 echo "Fail" >> $Results
fi
