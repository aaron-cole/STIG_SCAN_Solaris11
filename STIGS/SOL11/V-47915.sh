#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Telnet is an insecure protocol.

#STIG Identification
GrpID="V-47915"
GrpTitle="SRG-OS-999999"
RuleID="SV-60787r2_rule"
STIGID="SOL-11.1-020150"
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

if pkg list service/network/telnet >> $Results 2>>1; then
 echo "Fail" >> $Results
else
 echo "Pass" >> $Results
fi
