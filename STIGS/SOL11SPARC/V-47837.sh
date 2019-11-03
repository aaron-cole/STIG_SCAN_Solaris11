#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Centralized auditing simplifies the investigative process to determine the cause of a security event.

#STIG Identification
GrpID="V-47837"
GrpTitle="SRG-OS-999999"
RuleID="SV-60711r1_rule"
STIGID="SOL-11.1-100050"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
