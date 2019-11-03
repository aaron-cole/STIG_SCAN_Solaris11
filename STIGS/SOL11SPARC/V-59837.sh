#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#World writable files could be modified accidentally or maliciously to compromise system integrity.

#STIG Identification
GrpID="V-59837"
GrpTitle="SRG-OS-999999"
RuleID="SV-74267r3_rule"
STIGID="SOL-11.1-020350"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
