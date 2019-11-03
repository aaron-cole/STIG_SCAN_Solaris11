#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Telnet is an insecure protocol.

#STIG Identification
GrpID="V-71495"
GrpTitle="SRG-OS-999999"
RuleID="SV-86119r1_rule"
STIGID="SOL-11.1-040315"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
