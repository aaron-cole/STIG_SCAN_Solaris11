#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Access Control Lists allow an object owner to expand permissions on an object to specific users and groups in addition to the standard permission model. Non-standard Access Control List settings can allow unauthorized users to modify critical files.

#STIG Identification
GrpID="V-48029"
GrpTitle="SRG-OS-999999"
RuleID="SV-60901r1_rule"
STIGID="SOL-11.1-070260"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
