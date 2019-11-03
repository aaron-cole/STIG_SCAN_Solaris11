#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Files in directories that have had the "sticky bit" enabled can only be deleted by users that have both write permissions for the directory in which the file resides, as well as ownership of the file or directory, or have sufficient privileges. As this prevents users from overwriting each others' files, whether it be accidental or malicious, it is generally appropriate for most world-writable directories (e.g., /tmp).

#STIG Identification
GrpID="V-48137"
GrpTitle="SRG-OS-999999"
RuleID="SV-61009r1_rule"
STIGID="SOL-11.1-070010"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
