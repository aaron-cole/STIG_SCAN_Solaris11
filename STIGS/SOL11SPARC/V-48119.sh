#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Even though the .rhosts files are ineffective if support is disabled in /etc/pam.conf, they may have been brought over from other systems and could contain information useful to an attacker for those other systems.

#STIG Identification
GrpID="V-48119"
GrpTitle="SRG-OS-999999"
RuleID="SV-60991r1_rule"
STIGID="SOL-11.1-070050"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
