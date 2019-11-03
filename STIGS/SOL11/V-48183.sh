#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#FIPS 140-2 is the current standard for validating cryptographic modules, and NSA Type-X (where X=1, 2, 3, 4) products are NSA-certified hardware based encryption modules.

#STIG Identification
GrpID="V-48183"
GrpTitle="SRG-OS-000173"
RuleID="SV-61055r1_rule"
STIGID="SOL-11.1-060060"
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
 cryptoadm list fips-140| grep -c "is disabled" >> $Results
 if [ "$(cryptoadm list fips-140| grep -c "is disabled")" -eq 0 ]; then
  echo "Pass" >> $Results
 else
  echo "Fail" >> $Results
 fi
fi
