#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Intrusion detection and prevention capabilities must be architected and implemented to prevent non-privileged users from circumventing such protections. This can be accomplished through the use of user roles, use of proper systems permissions, auditing, logging, etc.

#STIG Identification
GrpID="V-47945"
GrpTitle="SRG-OS-000214"
RuleID="SV-60817r1_rule"
STIGID="SOL-11.1-090200"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
