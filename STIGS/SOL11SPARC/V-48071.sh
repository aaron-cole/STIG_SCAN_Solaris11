#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Setting a very secure default value for umask ensures that users make a conscious choice about their file permissions.

#STIG Identification
GrpID="V-48071"
GrpTitle="SRG-OS-999999"
RuleID="SV-60943r1_rule"
STIGID="SOL-11.1-040260"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
