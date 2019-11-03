#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#To ensure password changes are effective in their goals, the system must ensure old and new passwords have significant differences. Without significant changes, new passwords may be easily guessed based on the value of a previously compromised password.

#STIG Identification
GrpID="V-47967"
GrpTitle="SRG-OS-000072"
RuleID="SV-60839r2_rule"
STIGID="SOL-11.1-040060"
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

grep ^MINDIFF /etc/default/passwd >> $Results
if [ "$(grep ^MINDIFF /etc/default/passwd | awk -F= '{print $2}')" -ge 8 ]; then
 echo "Pass" >> $Results
else
 echo "Fail" >> $Results
fi 