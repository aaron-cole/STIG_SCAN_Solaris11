#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Solaris zones can be assigned privileges generally reserved for the global zone using the "limitpriv" zone option. Any privilege assignments in excess of the vendor defaults may provide the ability for a non-global zone to compromise the global zone.

#STIG Identification
GrpID="V-47895"
GrpTitle="SRG-OS-999999"
RuleID="SV-60767r3_rule"
STIGID="SOL-11.1-100020"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
