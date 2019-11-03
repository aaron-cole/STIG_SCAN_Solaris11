#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#A logical domain is a discrete, logical grouping with its own operating system, resources, and identity within a single computer system.  Access to the logical domain console provides system-level access to the OBP of the domain.

#STIG Identification
GrpID="V-71497"
GrpTitle="SRG-OS-999999"
RuleID="SV-86121r1_rule"
STIGID="SOL-11.1-040316"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
