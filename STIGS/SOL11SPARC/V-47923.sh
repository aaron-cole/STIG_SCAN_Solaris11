#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Addition of unauthorized code or packages may result in data corruption or theft.

#STIG Identification
GrpID="V-47923"
GrpTitle="SRG-OS-000098"
RuleID="SV-60795r1_rule"
STIGID="SOL-11.1-020190"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
