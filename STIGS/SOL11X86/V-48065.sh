#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Use of the .forward file poses a security risk in that sensitive data may be inadvertently transferred outside the organization. The .forward file also poses a secondary risk as it can be used to execute commands that may perform unintended actions.

#STIG Identification
GrpID="V-48065"
GrpTitle="SRG-OS-999999"
RuleID="SV-60937r1_rule"
STIGID="SOL-11.1-070170"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
