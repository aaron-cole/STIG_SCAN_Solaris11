#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#If a user is assigned a UID that is in the reserved range, even if it is not presently in use, security exposures can arise if a subsequently installed application uses the same UID.

#STIG Identification
GrpID="V-48077"
GrpTitle="SRG-OS-999999"
RuleID="SV-60949r4_rule"
STIGID="SOL-11.1-070130"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
