#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Data in world-writable files can be read, modified, and potentially compromised by any user on the system. World-writable files may also indicate an incorrectly written script or program that could potentially be the cause of a larger compromise to the system's integrity.

#STIG Identification
GrpID="V-48063"
GrpTitle="SRG-OS-999999"
RuleID="SV-60935r1_rule"
STIGID="SOL-11.1-070180"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
