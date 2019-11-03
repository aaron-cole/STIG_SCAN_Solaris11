#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#FTP is an insecure protocol.

#STIG Identification
GrpID="V-47911"
GrpTitle="SRG-OS-999999"
RuleID="SV-60783r1_rule"
STIGID="SOL-11.1-020130"
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

if service/network/ftp >> $Results 2>>1; then
 echo "Fail" >> $Results
else
 echo "Pass" >> $Results
fi
