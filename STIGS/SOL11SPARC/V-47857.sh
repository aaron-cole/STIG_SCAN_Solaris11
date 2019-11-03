#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Proper audit storage capacity is crucial to ensuring the ongoing logging of critical events.

#STIG Identification
GrpID="V-47857"
GrpTitle="SRG-OS-000044"
RuleID="SV-60731r2_rule"
STIGID="SOL-11.1-010400"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
