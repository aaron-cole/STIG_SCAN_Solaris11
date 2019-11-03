#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#The "mesg n" command blocks attempts to use the "write" or "talk" commands to contact users at their terminals, but has the side effect of slightly strengthening permissions on the user's TTY device.

#STIG Identification
GrpID="V-48075"
GrpTitle="SRG-OS-999999"
RuleID="SV-60947r2_rule"
STIGID="SOL-11.1-040270"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
