#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Passwords need to be changed at specific policy-based intervals; however, if the information system or application allows the user to immediately and continually change their password, then the password could be repeatedly changed in a short period of time, defeating the organization's policy regarding password reuse.

#STIG Identification
GrpID="V-47953"
GrpTitle="SRG-OS-000075"
RuleID="SV-60825r2_rule"
STIGID="SOL-11.1-040030"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
