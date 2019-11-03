#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Operating systems are capable of providing a wide variety of functions and services. Execution must be disabled based on organization-defined specifications.

#STIG Identification
GrpID="V-47925"
GrpTitle="SRG-OS-000095"
RuleID="SV-60797r1_rule"
STIGID="SOL-11.1-020220"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
