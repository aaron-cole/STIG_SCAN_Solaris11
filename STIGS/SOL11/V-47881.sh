#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Failure to install security updates can provide openings for attack.

#STIG Identification
GrpID="V-47881"
GrpTitle="SRG-OS-999999"
RuleID="SV-60753r2_rule"
STIGID="SOL-11.1-020010"
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

pkg publisher >> $Results
if pkg publisher | grep "online" >> /dev/null; then
 pfexec pkg update -n >> $Results
 if pfexec pkg update -n | grep "No updates available for this image" >> /dev/null; then
  echo "Pass" >> $Results
 else
  echo "Fail" >> $Results
 fi
else
 echo "No online repostority is available- Manual Check" >> $Results
 echo "Fail" >> $Results
fi
