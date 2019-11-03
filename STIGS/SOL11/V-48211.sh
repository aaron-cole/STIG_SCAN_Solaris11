#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#This setting controls the maximum number of incoming connections that can be accepted on a TCP port limiting exposure to denial of service attacks.

#STIG Identification
GrpID="V-48211"
GrpTitle="SRG-OS-999999"
RuleID="SV-61083r1_rule"
STIGID="SOL-11.1-050120"
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

ipadm show-prop -p _conn_req_max_q -co current tcp >> $Results

if [ "$(ipadm show-prop -p _conn_req_max_q -co current tcp)" -eq 1024 ]; then
 echo "Pass" >> $Results
else
 echo "Fail" >> $Results
fi
