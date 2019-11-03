#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#If a group is assigned a duplicate group name, it will create and have access to files with the first GID for that group in group. Effectively, the GID is shared, which is a security risk.

#STIG Identification
GrpID="V-48069"
GrpTitle="SRG-OS-999999"
RuleID="SV-60941r2_rule"
STIGID="SOL-11.1-070150"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
