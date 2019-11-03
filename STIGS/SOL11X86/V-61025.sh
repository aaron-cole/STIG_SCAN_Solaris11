#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Open X displays allow an attacker to capture keystrokes and to execute commands remotely. Many users have their X Server set to xhost +, permitting access to the X Server by anyone, from anywhere.

#STIG Identification
GrpID="V-61025"
GrpTitle="SRG-OS-999999"
RuleID="SV-75493r1_rule"
STIGID="SOL-11.1-020530"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
