#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#If the startup files are writable by other users, these users could modify the startup files to insert malicious commands into the startup files.

#STIG Identification
GrpID="V-59827"
GrpTitle="SRG-OS-999999"
RuleID="SV-74257r1_rule"
STIGID="SOL-11.1-020300"
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

FINDFILES="$(find /etc/rc* /etc/init.d /lib/svc/method -type f -perm /022)"
echo "$FINDFILES" >> $Results
if [ -z "$FINDFILES" ] ; then
 echo "Pass" >> $Results
else
 echo "Fail" >> $Results
fi
