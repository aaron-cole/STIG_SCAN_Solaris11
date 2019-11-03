#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#

#STIG Identification
GrpID="V-47939"
GrpTitle="SRG-OS-000035"
RuleID="SV-60811r1_rule"
STIGID="SOL-11.1-030060"
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
 svcs -Ho state svc:/system/filesystem/rmvolmgr:default >> $Results
 if [ "$(svcs -Ho state svc:/system/filesystem/rmvolmgr:default)" = "disabled" ]; then
  echo "Pass" >> $Results
 else
  echo "Fail" >> $Results
 fi
fi