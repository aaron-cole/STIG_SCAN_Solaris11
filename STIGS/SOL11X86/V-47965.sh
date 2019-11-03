#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Without the use of automated mechanisms to scan for security flaws on a continuous and/or periodic basis, the operating system or other system components may remain vulnerable to the exploits presented by undetected software flaws.

#STIG Identification
GrpID="V-47965"
GrpTitle="SRG-OS-000191"
RuleID="SV-60837r1_rule"
STIGID="SOL-11.1-090110"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
