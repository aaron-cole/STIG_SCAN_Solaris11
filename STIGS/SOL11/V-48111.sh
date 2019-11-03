#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#

#STIG Identification
GrpID="V-48111"
GrpTitle="SRG-OS-000163"
RuleID="SV-60983r1_rule"
STIGID="SOL-11.1-040380"
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

grep "^ClientAlive" /etc/ssh/sshd_config >> $Results

if [ "$(grep "^ClientAliveInterval " /etc/ssh/sshd_config | awk '{print $2}')" = "600" ]; then
 if [ "$(grep "^ClientAliveCountMax " /etc/ssh/sshd_config | awk '{print $2}')" = "0" ]; then
  echo "Pass" >> $Results
 else
  echo "ClientAliveCountMax not configured correctly" >> $Results
  echo "Fail" >> $Results
 fi
else
 echo "ClientAliveInterval not configured correctly" >> $Results
 echo "Fail" >> $Results
fi
