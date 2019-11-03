#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#User groups must be assigned unique GIDs for accountability and to ensure appropriate access protections.

#STIG Identification
GrpID="V-48081"
GrpTitle="SRG-OS-999999"
RuleID="SV-60953r1_rule"
STIGID="SOL-11.1-070120"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
