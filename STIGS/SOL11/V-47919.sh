#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#The portmap and rpcbind services increase the attack surface of the system and should only be used when needed. The portmap or rpcbind services are used by a variety of services using remote procedure calls (RPCs).

#STIG Identification
GrpID="V-47919"
GrpTitle="SRG-OS-999999"
RuleID="SV-60791r1_rule"
STIGID="SOL-11.1-020170"
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

svcprop -p config/local_only network/rpc/bind >> $Results
if [ "$(svcprop -p config/local_only network/rpc/bind)" = "true" ]; then
 echo "Pass" >> $Results
else
 echo "Fail" >> $Results
fi

