#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Organization-defined networking protocols can be limited through the use of the host-based firewall.

#STIG Identification
GrpID="V-48227"
GrpTitle="SRG-OS-000248"
RuleID="SV-61099r1_rule"
STIGID="SOL-11.1-050320"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
