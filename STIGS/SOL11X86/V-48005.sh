#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#A system's BIOS or system controller handles the initial startup of a system and its configuration must be protected from unauthorized modification. When the BIOS or system controller supports the creation of user accounts or passwords, such protections must be used and accounts/passwords only assigned to system administrators. Failure to protect BIOS or system controller settings could result in denial of service or compromise of the system resulting from unauthorized configuration changes.

#STIG Identification
GrpID="V-48005"
GrpTitle="SRG-OS-999999"
RuleID="SV-60877r2_rule"
STIGID="SOL-11.1-080120"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
