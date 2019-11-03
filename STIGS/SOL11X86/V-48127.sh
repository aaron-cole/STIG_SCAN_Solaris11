#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Use an authorized mechanism such as RBAC and the "su" command to provide administrative access to unprivileged accounts. These mechanisms provide an audit trail in the event of problems.

#STIG Identification
GrpID="V-48127"
GrpTitle="SRG-OS-999999"
RuleID="SV-60999r1_rule"
STIGID="SOL-11.1-040430"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
