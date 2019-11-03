#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#System start-up files executing programs owned by other than root (or another privileged user) or an application indicates the system may have been compromised.

#STIG Identification
GrpID="V-59843"
GrpTitle="SRG-OS-999999"
RuleID="SV-74273r1_rule"
STIGID="SOL-11.1-020380"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
