#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Whether active or not, default SNMP passwords, users, and passphrases must be changed to maintain security. If the service is running with the default authenticators, then anyone can gather data about the system and the network and use the information to potentially compromise the integrity of the system or network(s).

#STIG Identification
GrpID="V-47995"
GrpTitle="SRG-OS-999999"
RuleID="SV-60867r1_rule"
STIGID="SOL-11.1-080160"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
