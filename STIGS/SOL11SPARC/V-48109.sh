#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#All users must be assigned a home directory in the passwd file. Failure to have a home directory may result in the user being put in the root directory.

#STIG Identification
GrpID="V-48109"
GrpTitle="SRG-OS-999999"
RuleID="SV-60981r1_rule"
STIGID="SOL-11.1-070070"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
