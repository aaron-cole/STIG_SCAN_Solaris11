#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Allowing access to a graphical environment when the user is not attending the system can allow unauthorized users access to the system.

#STIG Identification
GrpID="V-48047"
GrpTitle="SRG-OS-000029"
RuleID="SV-60919r2_rule"
STIGID="SOL-11.1-040180"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
