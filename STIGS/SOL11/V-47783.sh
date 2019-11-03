#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Using the audit system will utilize the audit reduction capability. Without an audit reduction capability, users find it difficult to identify specific patterns of attack.

#STIG Identification
GrpID="V-47783"
GrpTitle="SRG-OS-000052"
RuleID="SV-60659r1_rule"
STIGID="SOL-11.1-010060"
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
 pfexec auditconfig -getcond >> $Results
 if [ "$(pfexec auditconfig -getcond)" = "audit condition = auditing" ]; then
  echo "Pass" >> $Results
 else
  echo "Fail" >> $Results
 fi
fi