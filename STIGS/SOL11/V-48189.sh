#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Ignoring ICMP redirect messages reduces the likelihood of denial of service attacks.

#STIG Identification
GrpID="V-48189"
GrpTitle="SRG-OS-999999"
RuleID="SV-61061r1_rule"
STIGID="SOL-11.1-050070"
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

ipadm show-prop -p _ignore_redirect -co current -co current ipv4 >> $Results
ipadm show-prop -p _ignore_redirect -co current -co current ipv6 >> $Results

if [ "$(ipadm show-prop -p _ignore_redirect -co current -co current ipv4)" -eq 1 ]; then
 if [ "$(ipadm show-prop -p _ignore_redirect -co current -co current ipv6)" -eq 1 ]; then
  echo "Pass" >> $Results
 else
  echo "IPV6 not set properly" >> $Results
  echo "Fail" >> $Results
 fi
else
 echo "IPV4 not set properly" >> $Results
 echo "Fail" >> $Results
fi
