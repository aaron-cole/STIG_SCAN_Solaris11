#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#An operating system release is considered supported if the vendor continues to provide security patches for the product. With an unsupported release, it will not be possible to resolve security issues discovered in the system software.

#STIG Identification
GrpID="V-48027"
GrpTitle="SRG-OS-999999"
RuleID="SV-60899r1_rule"
STIGID="SOL-11.1-080010"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
