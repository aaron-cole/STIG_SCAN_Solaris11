#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Without the use of PKI systems to manage digital certificates, the operating system or other system components may be unable to securely communicate on a network or reliably verify the identity of a user via digital signatures.

#STIG Identification
GrpID="V-49625"
GrpTitle="SRG-OS-999999"
RuleID="SV-62549r1_rule"
STIGID="SOL-11.1-090115"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
