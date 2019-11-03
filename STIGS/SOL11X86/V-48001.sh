#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#The flexibility that GRUB provides creates a security risk if its configuration is modified by an unauthorized user. The failsafe menu entry needs to be secured in the same environments that require securing the systems firmware to avoid unauthorized removable media boots.

#STIG Identification
GrpID="V-48001"
GrpTitle="SRG-OS-999999"
RuleID="SV-60873r4_rule"
STIGID="SOL-11.1-080140"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
