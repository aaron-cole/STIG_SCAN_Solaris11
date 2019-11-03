#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#ICMP echo requests can be useful for reconnaissance of systems and for denial of service attacks.

#STIG Identification
GrpID="V-48181"
GrpTitle="SRG-OS-999999"
RuleID="SV-61053r1_rule"
STIGID="SOL-11.1-050050"
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

ipadm show-prop -p _respond_to_echo_broadcast -co current ip >> $Results

if [ "$(ipadm show-prop -p _respond_to_echo_broadcast -co current ip)" -eq 0 ]; then
 echo "Pass" >> $Results
else
 echo "Fail" >> $Results
fi
