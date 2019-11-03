#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Warning messages inform users who are attempting to log in to the system of their legal status regarding the system and must include the name of the organization that owns the system and any monitoring policies that are in place. As implementing a logon banner to deter inappropriate use can provide a foundation for legal action against abuse, this warning content should be set as appropriate.

#STIG Identification
GrpID="V-48199"
GrpTitle="SRG-OS-000023"
RuleID="SV-61071r1_rule"
STIGID="SOL-11.1-050430"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
