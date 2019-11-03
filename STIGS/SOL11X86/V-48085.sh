#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Inactive accounts pose a threat to system security since the users are not logging in to notice failed login attempts or other anomalies.

#STIG Identification
GrpID="V-48085"
GrpTitle="SRG-OS-000123"
RuleID="SV-60957r1_rule"
STIGID="SOL-11.1-040300"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
