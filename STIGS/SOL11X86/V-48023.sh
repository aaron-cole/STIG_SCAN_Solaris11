#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Modification of memory area can result in executable code vulnerabilities. ASLR can reduce the likelihood of these attacks. ASLR activates the randomization of key areas of the process such as stack, brk-based heap, memory mappings, and so forth.

#STIG Identification
GrpID="V-48023"
GrpTitle="SRG-OS-999999"
RuleID="SV-60895r2_rule"
STIGID="SOL-11.1-080030"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
