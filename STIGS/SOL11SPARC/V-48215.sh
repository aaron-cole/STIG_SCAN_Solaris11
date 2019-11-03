#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Remote access to the system can be limited through the use of the host-based firewall.

#STIG Identification
GrpID="V-48215"
GrpTitle="SRG-OS-000231"
RuleID="SV-61087r1_rule"
STIGID="SOL-11.1-050360"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
