#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#This control enhancement is implemented within the remote device (e.g., notebook/laptop computer) via configuration settings not configurable by the user of the device. An example of a non-remote communications path from a remote device is a virtual private network. When a non-remote connection is established using a virtual private network, the configuration settings prevent split-tunneling. Split-tunneling might otherwise be used by remote users to communicate with the information system as an extension of the system and to communicate with local resources, such as a printer or file server. The remote device, when connected by a non-remote connection, becomes an extension of the information system allowing dual communications paths, such as split-tunneling, in effect allowing unauthorized external connections into the system. This is a split-tunneling requirement that can be controlled via the operating system by disabling interfaces.

#STIG Identification
GrpID="V-48147"
GrpTitle="SRG-OS-000148"
RuleID="SV-61019r1_rule"
STIGID="SOL-11.1-040490"
Results="./Results/$GrpID"

#Remove File if already there
[ -e $Results ] && rm -rf $Results

#Setup Results File
echo $GrpID >> $Results
echo $GrpTitle >> $Results
echo $RuleID >> $Results
echo $STIGID >> $Results
##END of Automatic Items##
