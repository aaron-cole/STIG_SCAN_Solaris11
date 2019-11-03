#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#TCP Wrappers are a host-based access control system that allows administrators to control who has access to various network services based on the IP address of the remote end of the connection. TCP Wrappers also provide logging information via syslog about both successful and unsuccessful connections.

#STIG Identification
GrpID="V-47935"
GrpTitle="SRG-OS-999999"
RuleID="SV-60807r1_rule"
STIGID="SOL-11.1-030050"
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

inetadm -p | grep tcp_wrappers >> $Results

if [ "$(inetadm -p | grep tcp_wrappers | cut -f 1 -d "=")" = "TRUE" ]; then
 ls -l /etc/hosts.allow /etc/hosts.deny >> $Results 2>>1
 if [ -f /etc/hosts.allow ] && [ -f /etc/hosts.deny ]; then
  echo "Pass" >> $Results
 else
  echo "Fail" >> $Results
 fi
else
 echo "Fail" >> $Results
fi