#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#As an immediate return of an error message, coupled with the capability to try again, may facilitate automatic and rapid-fire brute-force password attacks by a malicious user.

#STIG Identification
GrpID="V-48043"
GrpTitle="SRG-OS-999999"
RuleID="SV-60915r1_rule"
STIGID="SOL-11.1-040160"
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

grep ^SLEEPTIME /etc/default/login

if [ "$(grep ^SLEEPTIME /etc/default/login | awk -F= '{print $2}')" -ge 4 ]; then
 echo "Pass" >> $Results
else
 echo "Fail" >> $Results
fi
