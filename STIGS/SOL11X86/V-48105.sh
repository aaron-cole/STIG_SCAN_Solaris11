#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#If the user's home directory does not exist, the user will be placed in "/" and will not be able to write any files or have local environment variables set.

#STIG Identification
GrpID="V-48105"
GrpTitle="SRG-OS-999999"
RuleID="SV-60977r2_rule"
STIGID="SOL-11.1-070080"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
