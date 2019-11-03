#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#As enabling X11 Forwarding on the host can permit a malicious user to secretly open another X11 connection to another remote client during the session and perform unobtrusive activities such as keystroke monitoring, if the X11 services are not required for the system's intended function, they should be disabled or restricted as appropriate to the user's needs.

#STIG Identification
GrpID="V-48093"
GrpTitle="SRG-OS-999999"
RuleID="SV-60965r1_rule"
STIGID="SOL-11.1-040330"
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

grep "^X11Forwarding " /etc/ssh/sshd_config >> $Results

if [ "$(grep "^X11Forwarding " /etc/ssh/sshd_config | awk '{print $2}')" = "no" ]; then
 echo "Pass" >> $Results
else
 echo "Fail" >> $Results
fi
