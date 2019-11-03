#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#This parameter must be disabled to reduce the risk of denial of service attacks.

#STIG Identification
GrpID="V-48165"
GrpTitle="SRG-OS-999999"
RuleID="SV-61037r1_rule"
STIGID="SOL-11.1-050010"
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

ipadm show-prop -p _forward_directed_broadcasts -co current ip >> $Results

if [ "$(ipadm show-prop -p _forward_directed_broadcasts -co current ip)" -eq 0 ]; then
 echo "Pass" >> $Results
else
 echo "Fail" >> $Results
fi
