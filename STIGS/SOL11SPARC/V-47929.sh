#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Externally accessible graphical desktop software may open the system to remote attacks.

#STIG Identification
GrpID="V-47929"
GrpTitle="SRG-OS-999999"
RuleID="SV-60801r1_rule"
STIGID="SOL-11.1-030010"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
