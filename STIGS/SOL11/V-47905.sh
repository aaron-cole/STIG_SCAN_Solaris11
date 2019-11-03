#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#NIS is an insecure protocol.

#STIG Identification
GrpID="V-47905"
GrpTitle="SRG-OS-999999"
RuleID="SV-60777r1_rule"
STIGID="SOL-11.1-020110"
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

if pkg list service/network/nis >> $Results 2>>1; then
 echo "Fail" >> $Results
else
 echo "Pass" >> $Results
fi
