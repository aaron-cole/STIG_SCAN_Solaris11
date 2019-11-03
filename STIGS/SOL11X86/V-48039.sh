#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#A new user who is assigned a deleted user's user ID or group ID may then end up owning these files, and thus have more access on the system than was intended.

#STIG Identification
GrpID="V-48039"
GrpTitle="SRG-OS-999999"
RuleID="SV-60911r1_rule"
STIGID="SOL-11.1-070200"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
