#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#As automatic logins are a known security risk for other than "kiosk" types of systems, GNOME automatic login should be disabled in pam.conf.

#STIG Identification
GrpID="V-48121"
GrpTitle="SRG-OS-999999"
RuleID="SV-60993r1_rule"
STIGID="SOL-11.1-040410"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
