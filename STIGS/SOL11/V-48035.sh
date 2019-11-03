#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#All accounts with a GID of 0 have root group privileges and must be limited to the group account only.

#STIG Identification
GrpID="V-48035"
GrpTitle="SRG-OS-999999"
RuleID="SV-60907r1_rule"
STIGID="SOL-11.1-070220"
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

awk -F: '$4 == 0' /etc/passwd >> $Results
awk -F: '$3 == 0' /etc/group >> $Results
if awk -F: '$4 == 0' /etc/passwd | grep -v "^root" >/dev/null; then
 echo "Fail" >> $Results
else
 if awk -F: '$3 == 0' /etc/group | grep -v "^root::0:$" >/dev/null; then
  echo "Pass" >> $Results 
 else
  echo "Fail" >> $Results
fi
