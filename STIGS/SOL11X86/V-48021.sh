#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Process core dumps contain the memory in use by the process when it crashed. Process core dump files can be of significant size and their use can result in file systems filling to capacity, which may result in denial of service. Process core dumps can be useful for software debugging.

#STIG Identification
GrpID="V-48021"
GrpTitle="SRG-OS-999999"
RuleID="SV-60893r2_rule"
STIGID="SOL-11.1-080040"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
