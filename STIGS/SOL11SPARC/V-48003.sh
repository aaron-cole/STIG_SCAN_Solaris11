#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Setting the EEPROM password helps prevent attackers who gain physical access to the system console from booting from an external device (such as a CD-ROM or floppy).

#STIG Identification
GrpID="V-48003"
GrpTitle="SRG-OS-999999"
RuleID="SV-60875r1_rule"
STIGID="SOL-11.1-080130"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
