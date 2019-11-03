#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Protection of audit records and audit data is of critical importance. Care must be taken to ensure privileged users cannot circumvent audit protections put in place. Auditing might not be reliable when performed by an operating system which the user being audited has privileged access to. The privileged user could inhibit auditing or directly modify audit records. To prevent this from occurring, privileged access shall be further defined between audit-related privileges and other privileges, thus limiting the users with audit-related privileges.

#STIG Identification
GrpID="V-48031"
GrpTitle="SRG-OS-000217"
RuleID="SV-60903r2_rule"
STIGID="SOL-11.1-070250"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
