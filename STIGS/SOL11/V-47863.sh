#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Continuing to operate a system without auditing working properly can result in undocumented access or system changes.

#STIG Identification
GrpID="V-47863"
GrpTitle="SRG-OS-000047"
RuleID="SV-60737r2_rule"
STIGID="SOL-11.1-010420"
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
 if  pfexec auditconfig -getpolicy | grep active | grep ahlt >> $Results; then
  if ! pfexec auditconfig -getpolicy | grep active | grep cnt >> $Results; then
   echo "Pass" >> $Results
  else
   echo "Audit Policy is not set to correctly" >> $Results
   echo "Fail" >> $Results
  fi
 else
  echo "Audit Policy is not set to correctly" >> $Results
  echo "Fail" >> $Results
 fi
fi