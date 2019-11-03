#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Incorrect ownership can result in unauthorized changes or theft of data.

#STIG Identification
GrpID="V-47897"
GrpTitle="SRG-OS-999999"
RuleID="SV-60769r1_rule"
STIGID="SOL-11.1-100010"
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

if pkg verify system/zones >> $Results 2>>1; then
 echo "Fail" >> $Results
else
 echo "Pass" >> $Results
fi