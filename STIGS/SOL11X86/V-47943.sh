#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Limiting the lifespan of authenticators limits the period of time an unauthorized user has access to the system while using compromised credentials and reduces the period of time available for password-guessing attacks to run against a single password.

#STIG Identification
GrpID="V-47943"
GrpTitle="SRG-OS-000076"
RuleID="SV-60815r2_rule"
STIGID="SOL-11.1-040010"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
