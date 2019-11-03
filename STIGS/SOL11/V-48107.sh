#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Permitting login without a password is inherently risky.

#STIG Identification
GrpID="V-48107"
GrpTitle="SRG-OS-999999"
RuleID="SV-60979r1_rule"
STIGID="SOL-11.1-040370"
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

grep "^PermitEmptyPasswords " /etc/ssh/sshd_config >> $Results

if [ "$(grep "^PermitEmptyPasswords " /etc/ssh/sshd_config | awk '{print $2}')" = "no" ]; then
 echo "Pass" >> $Results
else
 echo "Fail" >> $Results
fi
