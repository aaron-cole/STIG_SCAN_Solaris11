#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#A host-based boundary protection mechanism is a host-based firewall.

#STIG Identification
GrpID="V-48229"
GrpTitle="SRG-OS-000152"
RuleID="SV-61101r1_rule"
STIGID="SOL-11.1-050290"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
