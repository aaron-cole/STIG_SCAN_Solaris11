#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Allowing any user to elevate their privileges can allow them excessive control of the system tools.

#STIG Identification
GrpID="V-48055"
GrpTitle="SRG-OS-000087"
RuleID="SV-60927r2_rule"
STIGID="SOL-11.1-040200"
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

userattr type root >> $Results

if [ "$(userattr type root)" = "role" ]; then
 if grep '[:;]roles=root[^;]*' /etc/user_attr >> $Results; then
  echo "Pass" >> $Results
 else
  echo "No local user has been assigned the root role" >> $Results
  echo "Fail" >> $Results
 fi
else
 echo "Root user is not configured as a role" >> $Results
 echo "Fail" >> $Results
fi
