#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Complex passwords can reduce the likelihood of success of automated password-guessing attacks.

#STIG Identification
GrpID="V-47999"
GrpTitle="SRG-OS-999999"
RuleID="SV-60871r1_rule"
STIGID="SOL-11.1-040120"
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

if logins -po >> $Results; then
 echo "Fail" >> $Results
else
 echo "Nothing Found" >> $Results
 echo "Pass" >> $Results
fi
