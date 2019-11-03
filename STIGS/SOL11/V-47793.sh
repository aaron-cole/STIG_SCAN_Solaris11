#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#

#STIG Identification
GrpID="V-47793"
GrpTitle="SRG-OS-000065"
RuleID="SV-60669r1_rule"
STIGID="SOL-11.1-010130"
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