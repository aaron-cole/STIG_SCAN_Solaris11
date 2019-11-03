#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#There are valid reasons for SUID/SGID programs, but it is important to identify and review such programs to ensure they are legitimate.

#STIG Identification
GrpID="V-48059"
GrpTitle="SRG-OS-999999"
RuleID="SV-60931r2_rule"
STIGID="SOL-11.1-070190"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
