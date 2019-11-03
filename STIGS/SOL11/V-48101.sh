#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Setting this parameter forces users to enter a password when authenticating with SSH.

#STIG Identification
GrpID="V-48101"
GrpTitle="SRG-OS-999999"
RuleID="SV-60973r1_rule"
STIGID="SOL-11.1-040350"
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

grep "^IgnoreRhosts " /etc/ssh/sshd_config >> $Results

if [ "$(grep "^IgnoreRhosts " /etc/ssh/sshd_config | awk '{print $2}')" = "yes" ]; then
 echo "Pass" >> $Results
else
 echo "Fail" >> $Results
fi
