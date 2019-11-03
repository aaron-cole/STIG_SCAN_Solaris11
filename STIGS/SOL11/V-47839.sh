#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Tracking the specific Solaris zones in the audit trail reduces the time required to determine the cause of a security event.

#STIG Identification
GrpID="V-47839"
GrpTitle="SRG-OS-999999"
RuleID="SV-60713r1_rule"
STIGID="SOL-11.1-100040"
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
 echo "List of non-global zones on server - $(zoneadm list | grep -v global)" >> $Results
 if pfexec auditconfig -getpolicy | grep active | grep zonename >> $Results; then
  echo "Pass" >> $Results
 else
  echo "Audit Policy is not set to audit zones" >> $Results
  echo "Fail" >> $Results
 fi
fi