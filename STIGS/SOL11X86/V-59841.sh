#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#If system start-up files do not have a group owner of root or a system group, the files may be modified by malicious users or intruders.

#STIG Identification
GrpID="V-59841"
GrpTitle="SRG-OS-999999"
RuleID="SV-74271r1_rule"
STIGID="SOL-11.1-020370"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
