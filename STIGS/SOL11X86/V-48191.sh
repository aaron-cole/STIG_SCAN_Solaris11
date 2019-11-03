#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Manipulation of IP addresses can allow untrusted systems to appear as trusted hosts, bypassing firewall and other security mechanism and resulting in system penetration.

#STIG Identification
GrpID="V-48191"
GrpTitle="SRG-OS-999999"
RuleID="SV-61063r2_rule"
STIGID="SOL-11.1-050470"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
