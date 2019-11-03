#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Ensuring the confidentiality of transmitted information requires the operating system take feasible measures to employ transmission layer security. This requirement applies to communications across internal and external networks.

#STIG Identification
GrpID="V-48167"
GrpTitle="SRG-OS-000160"
RuleID="SV-61039r1_rule"
STIGID="SOL-11.1-060100"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
