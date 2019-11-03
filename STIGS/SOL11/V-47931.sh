#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#This service should be disabled if it is not required.

#STIG Identification
GrpID="V-47931"
GrpTitle="SRG-OS-999999"
RuleID="SV-60803r1_rule"
STIGID="SOL-11.1-030030"
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

svcs -Ho state svc:/network/rpc/gss >> $Results
if [ "$(svcs -Ho state svc:/network/rpc/gss)" = "disabled" ]; then
 echo "Pass" >> $Results
else
 echo "Fail" >> $Results
fi