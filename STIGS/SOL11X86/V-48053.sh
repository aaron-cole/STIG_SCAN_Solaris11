#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#The use of common words in passwords simplifies password-cracking attacks.

#STIG Identification
GrpID="V-48053"
GrpTitle="SRG-OS-999999"
RuleID="SV-60925r1_rule"
STIGID="SOL-11.1-040190"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
