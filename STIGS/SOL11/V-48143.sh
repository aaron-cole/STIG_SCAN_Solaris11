#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#If the password field is blank and the system does not enforce a policy that passwords are required, it could allow login without proper authentication of a user.

#STIG Identification
GrpID="V-48143"
GrpTitle="SRG-OS-999999"
RuleID="SV-61015r1_rule"
STIGID="SOL-11.1-040480"
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

grep "^PASSREQ" /etc/default/login >> $Results

if [ "$(grep "^PASSREQ" /etc/default/login | awk -F= '{print $2}')" = "YES" ]; then
 echo "Pass" >> $Results
else
 echo "Fail" >> $Results
fi
