#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Shared accounts (accounts where two or more people log in with the same user identification) do not provide identification and authentication. There is no way to provide for non-repudiation or individual accountability.

#STIG Identification
GrpID="V-47983"
GrpTitle="SRG-OS-999999"
RuleID="SV-60855r2_rule"
STIGID="SOL-11.1-090030"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
