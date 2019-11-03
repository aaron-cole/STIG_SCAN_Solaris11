#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#The use of .rhosts authentication is an insecure protocol and can be replaced with public-key authentication using Secure Shell. As automatic authentication settings in the .rhosts files can provide a malicious user with sensitive system credentials, the use of .rhosts files should be disabled.

#STIG Identification
GrpID="V-48113"
GrpTitle="SRG-OS-999999"
RuleID="SV-60985r4_rule"
STIGID="SOL-11.1-040390"
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

grep "pam_rhosts_auth.so.1" /etc/pam.conf /etc/pam.d/* >> $Results 2>/dev/null | grep -v "^#"

if [ "$(grep "pam_rhosts_auth.so.1" /etc/pam.conf /etc/pam.d/* 2>/dev/null | grep -vc '^#')" -eq 0 ]; then
 echo "Pass"
else
 echo "Fail"
fi
