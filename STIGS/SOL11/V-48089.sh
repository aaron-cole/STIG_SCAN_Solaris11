#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#If login by the user "nobody" is allowed for secure RPC, there is an increased risk of system compromise. If keyserv holds a private key for the "nobody" user, it will be used by key_encryptsession to compute a magic phrase which can be easily recovered by a malicious user.

#STIG Identification
GrpID="V-48089"
GrpTitle="SRG-OS-999999"
RuleID="SV-60961r1_rule"
STIGID="SOL-11.1-040320"
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

grep "^ENABLE_NOBODY_KEYS=" /etc/default/keyserv >> $Results

if [ "$(grep "^ENABLE_NOBODY_KEYS=" /etc/default/keyserv | awk -F= '{print $2}')" = "NO" ]; then
 echo "Pass" >> $Results
else
 echo "Fail" >> $Results
fi
