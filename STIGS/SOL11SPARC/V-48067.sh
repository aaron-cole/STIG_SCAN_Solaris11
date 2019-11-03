#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#The .netrc file presents a significant security risk since it stores passwords in unencrypted form.

#STIG Identification
GrpID="V-48067"
GrpTitle="SRG-OS-999999"
RuleID="SV-60939r2_rule"
STIGID="SOL-11.1-070160"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
