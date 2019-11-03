#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Accounts providing no operational purpose provide additional opportunities for system compromise. Unnecessary accounts include user accounts for individuals not requiring access to the system and application accounts for applications not installed on the system.

#STIG Identification
GrpID="V-47979"
GrpTitle="SRG-OS-999999"
RuleID="SV-60851r1_rule"
STIGID="SOL-11.1-090040"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
