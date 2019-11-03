#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Legacy remote access utilities allow remote control of a system without proper authentication.

#STIG Identification
GrpID="V-47901"
GrpTitle="SRG-OS-999999"
RuleID="SV-60773r1_rule"
STIGID="SOL-11.1-020100"
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

if pkg list service/network/legacy-remote-utilities >> $Results 2>>1; then
 echo "Fail" >> $Results
else
 echo "Pass" >> $Results
fi
