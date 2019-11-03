#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#FTP is an insecure protocol that transfers files and credentials in clear text, and can be replaced by using SFTP. However, if FTP is permitted for use in the environment, it is important to ensure that the default "system" accounts are not permitted to transfer files via FTP, especially the root role. Consider also adding the names of other privileged or shared accounts that may exist on the system such as user "oracle" and the account which the web server process runs under.

#STIG Identification
GrpID="V-48117"
GrpTitle="SRG-OS-999999"
RuleID="SV-60989r1_rule"
STIGID="SOL-11.1-040400"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
