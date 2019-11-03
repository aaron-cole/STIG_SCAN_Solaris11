#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#The use of wireless networking can introduce many different attack vectors into the organization’s network. Common attack vectors such as malicious association and ad hoc networks will allow an attacker to spoof a wireless access point (AP), allowing validated systems to connect to the malicious AP and enabling the attacker to monitor and record network traffic. These malicious APs can also serve to create a man-in-the-middle attack or be used to create a denial-of-service to valid network resources.

#STIG Identification
GrpID="V-72827"
GrpTitle="SRG-OS-000481-GPOS-000481"
RuleID="SV-87479r2_rule"
STIGID="SOL-11.1-050480"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
