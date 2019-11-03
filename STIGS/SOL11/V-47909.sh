#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Instant messaging is an insecure protocol.

#STIG Identification
GrpID="V-47909"
GrpTitle="SRG-OS-999999"
RuleID="SV-60781r1_rule"
STIGID="SOL-11.1-020120"
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

if pkg list communication/im/pidgin >> $Results 2>>1; then
 echo "Fail" >> $Results
else
 echo "Pass" >> $Results
fi
