#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Cryptographic hashes provide quick password authentication while not actually storing the password.

#STIG Identification
GrpID="V-48243"
GrpTitle="SRG-OS-000073"
RuleID="SV-61115r4_rule"
STIGID="SOL-11.1-040130"
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

grep ^CRYPT /etc/security/policy.conf

if [ "$(grep ^CRYPT_DEFAULT /etc/security/policy.conf | awk -F= '{print $2}')" -eq 6 ]; then
 if [ "$(grep ^CRYPT_ALGORITHMS_ALLOW /etc/security/policy.conf | awk -F= '{print $2}')" = "5,6" ]; then
  echo "Pass" >> $Results
 else
  echo "CRYPT_ALGORITHMS_ALLOW set inproperly" >> $Results
  echo "Fail" >> $Results
else
 echo "CRYPT_DEFAULT set inproperly" >> $Results
 echo "Fail" >> $Results
fi
