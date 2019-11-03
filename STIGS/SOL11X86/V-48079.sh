#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Inactive accounts pose a threat to system security since the users are not logging in to notice failed login attempts or other anomalies.

#STIG Identification
GrpID="V-48079"
GrpTitle="SRG-OS-000003"
RuleID="SV-60951r1_rule"
STIGID="SOL-11.1-040280"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
