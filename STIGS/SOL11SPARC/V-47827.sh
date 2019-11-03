#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Keeping audit records on a remote system reduces the likelihood of audit records being changed or corrupted. Duplicating and protecting the audit trail on a separate system reduces the likelihood of an individual being able to deny performing an action.

#STIG Identification
GrpID="V-47827"
GrpTitle="SRG-OS-000061"
RuleID="SV-60703r2_rule"
STIGID="SOL-11.1-010350"
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

if [ "$(zonename)" != "global" ]; then
 echo "This is a zone - $(zonename)" >> $Results
 echo "NA" >> $Results
else
 pfexec auditconfig -getplugin | grep audit_syslog >> $Results
 if [ "$(pfexec auditconfig -getplugin | grep audit_syslog)" = "Plugin: audit_syslog (active)" ]; then
  
  
  
  
  
 else
  echo "Syslog audit plugin is not enabled" >> $Results
  echo "Fail" >> $Results
 fi
fi