#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#

#STIG Identification
GrpID="V-48207"
GrpTitle="SRG-OS-999999"
RuleID="SV-61079r1_rule"
STIGID="SOL-11.1-050110"
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

ipadm show-prop -p _conn_req_max_q0 -co current tcp >> $Results

if [ "$(ipadm show-prop -p _conn_req_max_q0 -co current tcp)" -eq 4096 ]; then
 echo "Pass" >> $Results
else
 echo "Fail" >> $Results
fi
