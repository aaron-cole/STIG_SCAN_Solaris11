#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Login services should not be enabled on any serial ports that are not strictly required to support the mission of the system. This action can be safely performed even when console access is provided using a serial port.

#STIG Identification
GrpID="V-48087"
GrpTitle="SRG-OS-999999"
RuleID="SV-60959r1_rule"
STIGID="SOL-11.1-040310"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
