#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#Kernel core dumps may contain the full contents of system memory at the time of the crash. Kernel core dumps may consume a considerable amount of disk space and may result in denial of service by exhausting the available space on the target file system. The kernel core dump process may increase the amount of time a system is unavailable due to a crash. Kernel core dumps can be useful for kernel debugging.

#STIG Identification
GrpID="V-48013"
GrpTitle="SRG-OS-999999"
RuleID="SV-60885r1_rule"
STIGID="SOL-11.1-080080"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
