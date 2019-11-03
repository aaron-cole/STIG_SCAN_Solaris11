#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Proper configuration of the firewall will only allow encrypted, authenticated protocols such as SSHv2 to ensure the integrity of remote access sessions.

#STIG Identification
GrpID="V-48223"
GrpTitle="SRG-OS-000250"
RuleID="SV-61095r1_rule"
STIGID="SOL-11.1-050330"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
