#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Editing a system file with common tools such as vi, emacs, or gedit does not allow the auditing of changes made by an operator. This reduces the capability of determining which operator made security-relevant changes to the system.

#STIG Identification
GrpID="V-47937"
GrpTitle="SRG-OS-999999"
RuleID="SV-60809r1_rule"
STIGID="SOL-11.1-090240"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
