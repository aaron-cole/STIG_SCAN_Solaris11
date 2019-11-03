#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Complex passwords can reduce the likelihood of success of automated password-guessing attacks.

#STIG Identification
GrpID="V-47991"
GrpTitle="SRG-OS-000266"
RuleID="SV-60863r1_rule"
STIGID="SOL-11.1-040100"
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

grep ^MINSPECIAL /etc/default/passwd >> $Results
if [ "$(grep ^MINSPECIAL /etc/default/passwd | awk -F= '{print $2}')" -ge 1 ]; then
 echo "Pass" >> $Results
else
 echo "Fail" >> $Results
fi