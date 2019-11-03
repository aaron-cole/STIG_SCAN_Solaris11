#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#If unauthorized clients are permitted access to the X server, a user's X session may be compromised.

#STIG Identification
GrpID="V-61031"
GrpTitle="SRG-OS-999999"
RuleID="SV-75499r1_rule"
STIGID="SOL-11.1-020560"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
