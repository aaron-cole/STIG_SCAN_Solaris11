#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#A firewall that relies on a deny all, permit by exception strategy requires all traffic to have explicit permission before traversing an interface on the host.

#STIG Identification
GrpID="V-48235"
GrpTitle="SRG-OS-000147"
RuleID="SV-61107r1_rule"
STIGID="SOL-11.1-050240"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
