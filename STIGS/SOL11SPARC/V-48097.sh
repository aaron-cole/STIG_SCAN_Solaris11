#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Since the user is accountable for files stored in the user's home directory, the user must be the owner of the directory.

#STIG Identification
GrpID="V-48097"
GrpTitle="SRG-OS-999999"
RuleID="SV-60969r2_rule"
STIGID="SOL-11.1-070090"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
