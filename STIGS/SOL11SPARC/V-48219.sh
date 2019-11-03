#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Proper configuration of the firewall will deny instant messaging clients which will reduce a user's ability to relay sensitive information.

#STIG Identification
GrpID="V-48219"
GrpTitle="SRG-OS-000176"
RuleID="SV-61091r1_rule"
STIGID="SOL-11.1-050350"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
