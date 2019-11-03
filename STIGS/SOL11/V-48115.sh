#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Groups defined in passwd but not in group file pose a threat to system security since group permissions are not properly managed.

#STIG Identification
GrpID="V-48115"
GrpTitle="SRG-OS-999999"
RuleID="SV-60987r1_rule"
STIGID="SOL-11.1-070060"
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

if logins -xo | awk -F: '($3 == "") { print $1 }' >> $Results; then
 echo "Fail" >> $Results
else
 echo "Nothing Found" >> $Results
 echo "Pass" >> $Results 
fi
