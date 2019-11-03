#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#

#STIG Identification
GrpID="V-47961"
GrpTitle="SRG-OS-000077"
RuleID="SV-60833r1_rule"
STIGID="SOL-11.1-040050"
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

grep ^HISTORY /etc/default/passwd >> $Results
if [ "$(grep ^HISTORY /etc/default/passwd | awk -F= '{print $2}')" -ge 5 ]; then
 echo "Pass" >> $Results
else
 echo "Fail" >> $Results
fi 