#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Multicast echo requests can be useful for reconnaissance of systems and for denial of service attacks.

#STIG Identification
GrpID="V-48185"
GrpTitle="SRG-OS-999999"
RuleID="SV-61057r1_rule"
STIGID="SOL-11.1-050060"
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

ipadm show-prop -p _respond_to_echo_multicast -co current ipv4 >> $Results
ipadm show-prop -p _respond_to_echo_multicast -co current ipv6 >> $Results

if [ "$(ipadm show-prop -p _respond_to_echo_multicast -co current ipv4)" -eq 0 ]; then
 if [ "$(ipadm show-prop -p _respond_to_echo_multicast -co current ipv6)" -eq 0 ]; then
  echo "Pass" >> $Results
 else
  echo "IPV6 not set properly" >> $Results
  echo "Fail" >> $Results
 fi
else
 echo "IPV4 not set properly" >> $Results
 echo "Fail" >> $Results
fi
