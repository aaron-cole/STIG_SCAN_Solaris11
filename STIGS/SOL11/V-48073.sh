#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#If a user is assigned a duplicate user name, it will create and have access to files with the first UID for that username in passwd.

#STIG Identification
GrpID="V-48073"
GrpTitle="SRG-OS-999999"
RuleID="SV-60945r1_rule"
STIGID="SOL-11.1-070140"
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

if getent passwd | awk -F: '{print $1}' | uniq -d >> $Results; then
 echo "Fail" >> $Results
else
 echo "Nothing Found" >> $Results
 echo "Pass" >> $Results 
fi
