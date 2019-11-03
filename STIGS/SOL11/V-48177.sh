#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#By determining the netmasks of various computers in your network, an attacker can better map your subnet structure and infer trust relationships.

#STIG Identification
GrpID="V-48177"
GrpTitle="SRG-OS-999999"
RuleID="SV-61049r1_rule"
STIGID="SOL-11.1-050040"
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

ipadm show-prop -p _respond_to_address_mask_broadcast -co current ip >> $Results

if [ "$(ipadm show-prop -p _respond_to_address_mask_broadcast -co current ip)" -eq 0 ]; then
 echo "Pass" >> $Results
else
 echo "Fail" >> $Results
fi
