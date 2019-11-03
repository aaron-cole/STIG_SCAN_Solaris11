#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Security functional testing involves testing the operating system for conformance to the operating system security function specifications, as well as for the underlying security model. The need to verify security functionality applies to all security functions. The conformance criteria state the conditions necessary for the operating system to exhibit the desired security behavior or satisfy a security property. For example, successful login triggers an audit entry.

#STIG Identification
GrpID="V-47907"
GrpTitle="SRG-OS-000199"
RuleID="SV-60779r1_rule"
STIGID="SOL-11.1-090250"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
