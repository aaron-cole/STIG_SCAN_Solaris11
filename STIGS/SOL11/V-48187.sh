#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#

#STIG Identification
GrpID="V-48187"
GrpTitle="SRG-OS-000481-GPOS-000481"
RuleID="SV-61059r3_rule"
STIGID="SOL-11.1-060010"
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
