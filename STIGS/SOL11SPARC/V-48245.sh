#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Allowing continued access to accounts on the system exposes them to brute-force password-guessing attacks.

#STIG Identification
GrpID="V-48245"
GrpTitle="SRG-OS-000021"
RuleID="SV-61117r1_rule"
STIGID="SOL-11.1-040140"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
