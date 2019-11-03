#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#The VNC service uses weak authentication capabilities and provides the user complete graphical system access.

#STIG Identification
GrpID="V-47921"
GrpTitle="SRG-OS-999999"
RuleID="SV-60793r1_rule"
STIGID="SOL-11.1-020180"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##

#Check

if pkg list x11/server/xvnc >> $Results 2>>1; then
 echo "Fail" >> $Results
else
 echo "Pass" >> $Results
fi
