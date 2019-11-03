#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#

#STIG Identification
GrpID="V-48193"
GrpTitle="SRG-OS-999999"
RuleID="SV-61065r1_rule"
STIGID="SOL-11.1-050080"
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

ipadm show-prop -p _strict_dst_multihoming -co current -co current ipv4 >> $Results
ipadm show-prop -p _strict_dst_multihoming -co current -co current ipv6 >> $Results

if [ "$(ipadm show-prop -p _strict_dst_multihoming -co current -co current ipv4)" -eq 1 ]; then
 if [ "$(ipadm show-prop -p _strict_dst_multihoming -co current -co current ipv6)" -eq 1 ]; then
  echo "Pass" >> $Results
 else
  echo "IPV6 not set properly" >> $Results
  echo "Fail" >> $Results
 fi
else
 echo "IPV4 not set properly" >> $Results
 echo "Fail" >> $Results
fi
