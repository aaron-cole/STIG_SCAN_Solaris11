#!/bin/sh
##Automatically defined items##

#Vulnerability Discussion
#

#STIG Identification
GrpID="V-47875"
GrpTitle="SRG-OS-000058"
RuleID="SV-60747r1_rule"
STIGID="SOL-11.1-010450"
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

if [ "$(zonename)" != "global" ]; then
 echo "This is a zone - $(zonename)" >> $Results
 echo "NA" >> $Results
else
 pfexec auditconfig -getplugin audit_binfile >> $Results
 AUDDIR="$(pfexec auditconfig -getplugin audit_binfile | grep "p_dir=" | awk -F";" '{print $2}' | sed 's/p_dir=//g')"
 ls -lLd $AUDDIR >> $Results
 if [ "$(stat -L --format=%U $AUDDIR)" = "root" ] && [ "$(stat -L --format=%G $AUDDIR)" = "root" ]; then
  AUDDIRPERM="$(stat -L --format=%a $AUDDIR)"
  if [ $(echo $AUDDIRPERM | awk '{print length}') = 3 ]; then
   if [ "$(echo $AUDDIRPERM | cut -c 1)" -eq 7 ] || [ "$(echo $AUDDIRPERM | cut -c 1)" -eq 5 ] ; then
    if [ "$(echo $AUDDIRPERM | cut -c 2)" -eq 5 ] || [ "$(echo $AUDDIRPERM | cut -c 2)" -eq 0 ]; then
	 if [ "$(echo $AUDDIRPERM | cut -c 2)" -eq 0 ]; then
      echo "Pass" >> $Results
	 else
	  echo "Other permissions not set correctly" >> $Results
	  echo "Fail"
	 fi
	else
	 echo "Group permissions not set correctly" >> $Results
	 echo "Fail"
	fi
   else
	echo "Owner permissions not set correctly" >> $Results
    echo "Fail"
   fi
  else
   if [ "$(echo $AUDDIRPERM | cut -c 2)" -eq 0 ]; then
    if [ "$(echo $AUDDIRPERM | cut -c 2)" -eq 7 ] || [ "$(echo $AUDDIRPERM | cut -c 1)" -eq 5 ] ; then
     if [ "$(echo $AUDDIRPERM | cut -c 3)" -eq 5 ] || [ "$(echo $AUDDIRPERM | cut -c 2)" -eq 0 ]; then
	  if [ "$(echo $AUDDIRPERM | cut -c 4)" -eq 0 ]; then
       echo "Pass" >> $Results
	  else
	   echo "Other permissions not set correctly" >> $Results
	   echo "Fail"
	  fi
	 else
	  echo "Group permissions not set correctly" >> $Results
	  echo "Fail"
	 fi
    else
	 echo "Owner permissions not set correctly" >> $Results
     echo "Fail"
    fi
   else
    echo "Special Permissions are set" >> $Results
    echo "Fail"
   fi
  fi
 else
  echo "Root is not the owner or Group Owner of the directory" >> $Results
  echo "Fail" >> $Results
 fi
fi