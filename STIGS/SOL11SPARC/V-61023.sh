#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#.Xauthority files ensure the user is authorized to access the specific X Windows host. Extended ACLs may permit unauthorized modification of these files, which could lead to Denial of Service to authorized access or allow unauthorized access to be obtained.

#STIG Identification
GrpID="V-61023"
GrpTitle="SRG-OS-999999"
RuleID="SV-75491r1_rule"
STIGID="SOL-11.1-020520"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
