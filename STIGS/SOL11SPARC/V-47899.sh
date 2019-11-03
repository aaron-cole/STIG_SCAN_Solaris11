#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#In the case of denial of service attacks, care must be taken when designing the operating system so as to ensure that the operating system makes the best use of system resources.

#STIG Identification
GrpID="V-47899"
GrpTitle="SRG-OS-000142"
RuleID="SV-60771r1_rule"
STIGID="SOL-11.1-090280"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
