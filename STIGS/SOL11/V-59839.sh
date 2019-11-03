#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#System start-up files not owned by root could lead to system compromise by allowing malicious users or applications to modify them for unauthorized purposes.  This could lead to system and network compromise.

#STIG Identification
GrpID="V-59839"
GrpTitle="SRG-OS-999999"
RuleID="SV-74269r1_rule"
STIGID="SOL-11.1-020360"
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

FINDFILES="$(find /etc/rc* /etc/init.d -type f ! -user root)"
echo "$FINDFILES" >> $Results
if [ -z "$FINDFILES" ] ; then
 echo "Pass" >> $Results
else
 echo "Fail" >> $Results
fi