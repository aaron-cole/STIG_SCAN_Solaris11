#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#By accurately determining the system's clock state, an attacker can more effectively attack certain time-based pseudorandom number generators (PRNGs) and the authentication systems that rely on them.

#STIG Identification
GrpID="V-48169"
GrpTitle="SRG-OS-999999"
RuleID="SV-61041r1_rule"
STIGID="SOL-11.1-050020"
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

ipadm show-prop -p _respond_to_timestamp -co current ip >> $Results

if [ "$(ipadm show-prop -p _respond_to_timestamp -co current ip)" -eq 0 ]; then
 echo "Pass" >> $Results
else
 echo "Fail" >> $Results
fi
