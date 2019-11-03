#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Services that are enabled but not required by the mission may provide excessive access or additional attack vectors to penetrate the system.

#STIG Identification
GrpID="V-47933"
GrpTitle="SRG-OS-999999"
RuleID="SV-60805r1_rule"
STIGID="SOL-11.1-030040"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##

#Check

echo "Document all services" >> $Results
svcs -a | grep online >> $Results 2>>1
echo "Fail"