#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Protection of audit records and audit data is of critical importance. Cryptographic mechanisms are the industry established standard used to protect the integrity of audit data.

#STIG Identification
GrpID="V-48145"
GrpTitle="SRG-OS-000216"
RuleID="SV-61017r1_rule"
STIGID="SOL-11.1-060180"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
