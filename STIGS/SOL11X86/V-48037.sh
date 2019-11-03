#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Attackers or malicious users could hide information, exploits, etc. in extended attribute areas. Since extended attributes are rarely used, it is important to find files with extended attributes set and correct these attributes.

#STIG Identification
GrpID="V-48037"
GrpTitle="SRG-OS-999999"
RuleID="SV-60909r2_rule"
STIGID="SOL-11.1-070210"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
