#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Group-writable or world-writable user configuration files may enable malicious users to steal or modify other users' data or to gain another user's system privileges.

#STIG Identification
GrpID="V-48129"
GrpTitle="SRG-OS-999999"
RuleID="SV-61001r1_rule"
STIGID="SOL-11.1-070030"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
