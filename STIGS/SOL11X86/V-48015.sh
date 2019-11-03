#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Process core dumps contain the memory in use by the process when it crashed. Any data the process was handling may be contained in the core file, and it must be protected accordingly. If the process core dump data directory has a mode more permissive than 0700, unauthorized users may be able to view or to modify sensitive information contained in any process core dumps in the directory.

#STIG Identification
GrpID="V-48015"
GrpTitle="SRG-OS-999999"
RuleID="SV-60887r1_rule"
STIGID="SOL-11.1-080070"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
