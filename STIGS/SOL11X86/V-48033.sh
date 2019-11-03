#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Proper file permissions and ownership ensures that only designated personnel in the organization can access error messages.

#STIG Identification
GrpID="V-48033"
GrpTitle="SRG-OS-000206"
RuleID="SV-60905r2_rule"
STIGID="SOL-11.1-070240"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
