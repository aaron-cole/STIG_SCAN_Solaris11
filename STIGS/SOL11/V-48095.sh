#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Users within the organization must be assigned unique UIDs for accountability and to ensure appropriate access protections.

#STIG Identification
GrpID="V-48095"
GrpTitle="SRG-OS-000104"
RuleID="SV-60967r1_rule"
STIGID="SOL-11.1-070100"
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

if logins -d >> $Results; then
 echo "Fail" >> $Results
else
 echo "Nothing Found" >> $Results
 echo "Pass" >> $Results 
fi
