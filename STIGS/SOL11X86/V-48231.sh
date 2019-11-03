#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Non-local maintenance and diagnostic communications often contain sensitive information and must be protected. The security of these remote accesses can be ensured by sending non-local maintenance and diagnostic communications through encrypted channels enforced via firewall configurations.

#STIG Identification
GrpID="V-48231"
GrpTitle="SRG-OS-000112"
RuleID="SV-61103r1_rule"
STIGID="SOL-11.1-050160"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
