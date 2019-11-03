#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Proper configuration of the firewall will only allow encrypted, authenticated protocols such as SSHv2. Stateful packet filtering and logging must also be enabled.

#STIG Identification
GrpID="V-48233"
GrpTitle="SRG-OS-000074"
RuleID="SV-61105r1_rule"
STIGID="SOL-11.1-050270"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
