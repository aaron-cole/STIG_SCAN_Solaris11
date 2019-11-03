#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Filling the audit storage area can result in a denial of service or system outage and can lead to events going undetected.

#STIG Identification
GrpID="V-47835"
GrpTitle="SRG-OS-000048"
RuleID="SV-60709r1_rule"
STIGID="SOL-11.1-010370"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
