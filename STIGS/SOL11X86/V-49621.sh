#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Overflowing the audit storage area can result in a denial of service or system outage.

#STIG Identification
GrpID="V-49621"
GrpTitle="SRG-OS-000045"
RuleID="SV-62545r1_rule"
STIGID="SOL-11.1-010410"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
