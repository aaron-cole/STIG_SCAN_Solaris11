#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Users need to be aware of activity that occurs regarding their account. Providing users with information regarding the date and time of their last successful login allows the user to determine if any unauthorized activity has occurred and gives them an opportunity to notify administrators.

#STIG Identification
GrpID="V-48131"
GrpTitle="SRG-OS-000025"
RuleID="SV-61003r1_rule"
STIGID="SOL-11.1-040450"
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

grep "PrintLastLog " /etc/ssh/sshd_config >> $Results

if [ "$(grep "^PrintLastLog " /etc/ssh/sshd_config | awk '{print $2}')" = "yes" ]; then
 echo "Pass" >> $Results
elif ! grep "PrintLastLog " /etc/ssh/sshd_config | grep -v "^#"; then
 echo "Pass" >> $Results
else
 echo "Fail" >> $Results
fi
