#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Non-organizational users must be assigned unique UIDs for accountability and to ensure appropriate access protections.

#STIG Identification
GrpID="V-48091"
GrpTitle="SRG-OS-000121"
RuleID="SV-60963r1_rule"
STIGID="SOL-11.1-070110"
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

if logins -d >> $Results; then
 echo "Fail" >> $Results
else
 echo "Nothing Found" >> $Results
 echo "Pass" >> $Results 
fi
