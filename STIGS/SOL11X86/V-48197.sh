#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#A malicious user can exploit the ability of the system to send ICMP redirects by continually sending packets to the system, forcing the system to respond with ICMP redirect messages, resulting in an adverse impact on the CPU performance of the system.

#STIG Identification
GrpID="V-48197"
GrpTitle="SRG-OS-999999"
RuleID="SV-61069r3_rule"
STIGID="SOL-11.1-050090"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
