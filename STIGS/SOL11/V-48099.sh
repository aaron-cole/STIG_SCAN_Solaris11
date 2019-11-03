#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Setting the authentication login limit to a low value will disconnect the attacker and force a reconnect, which severely limits the speed of such brute-force attacks.

#STIG Identification
GrpID="V-48099"
GrpTitle="SRG-OS-999999"
RuleID="SV-60971r1_rule"
STIGID="SOL-11.1-040340"
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

grep "^MaxAuthTries" /etc/ssh/sshd_config >> $Results

if [ "$(grep "^MaxAuthTries " /etc/ssh/sshd_config | awk '{print $2}')" = "6" ]; then
 if [ "$(grep "^MaxAuthTriesLog " /etc/ssh/sshd_config | awk '{print $2}')" = "6" ]; then
  echo "Pass" >> $Results
 else
  echo "MaxAuthTriesLog not configured correctly" >> $Results
  echo "Fail" >> $Results
 fi
else
 echo "MaxAuthTries not configured correctly" >> $Results
 echo "Fail" >> $Results
fi