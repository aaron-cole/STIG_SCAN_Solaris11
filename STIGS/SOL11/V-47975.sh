#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#

#STIG Identification
GrpID="V-47975"
GrpTitle="SRG-OS-000100"
RuleID="SV-60847r1_rule"
STIGID="SOL-11.1-090060"
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

grep ^PASSLENGTH /etc/default/passwd >> $Results
if [ "$(grep ^PASSLENGTH /etc/default/passwd | awk -F= '{print $2}')" -ge 15 ]; then
 echo "Pass" >> $Results
else
 echo "Fail" >> $Results
fi 
