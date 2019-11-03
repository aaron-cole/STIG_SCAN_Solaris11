#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#If enabled, reverse IP source routing would allow an attacker to more easily complete a three-way TCP handshake and spoof new connections.

#STIG Identification
GrpID="V-48201"
GrpTitle="SRG-OS-999999"
RuleID="SV-61073r1_rule"
STIGID="SOL-11.1-050100"
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

ipadm show-prop -p _rev_src_routes -co current tcp >> $Results

if [ "$(ipadm show-prop -p _rev_src_routes -co current tcp)" -eq 0 ]; then
 echo "Pass" >> $Results
else
 echo "Fail" >> $Results
fi
