#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#.netrc files may contain unencrypted passwords that can be used to attack other systems.

#STIG Identification
GrpID="V-48123"
GrpTitle="SRG-OS-999999"
RuleID="SV-60995r1_rule"
STIGID="SOL-11.1-070040"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
