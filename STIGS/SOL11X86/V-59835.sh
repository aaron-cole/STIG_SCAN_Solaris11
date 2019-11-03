#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#The library preload list environment variable contains a list of libraries for the dynamic linker to load before loading the libraries required by the binary. If this list contains paths to libraries to the current working directory that have not been authorized, unintended libraries may be preloaded. This variable is formatted as a space-separated list of libraries. Paths starting with a slash (/) are absolute paths.

#STIG Identification
GrpID="V-59835"
GrpTitle="SRG-OS-999999"
RuleID="SV-74265r2_rule"
STIGID="SOL-11.1-020340"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
