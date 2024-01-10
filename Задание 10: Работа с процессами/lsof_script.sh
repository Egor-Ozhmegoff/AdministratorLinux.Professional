#!/bin/bash
if [[ $1 == "-i" ]]
then
  PROCESSES=$2
else
  PROCESSES=`ls /proc | grep -Eo '[0-9]+'`
fi

echo 'NAME PROC_ID FD'
for PROC in $PROCESSES
do
  FD=$(sudo ls -l /proc/$PROC/fd/ 2>/dev/null |  tail -n +2 |  awk '{print $NF}')
  NAME=$(sudo ls -l /proc/$PROC/exe 2>/dev/null | awk '{print $NF}')
  for DIR in $FD
    do
      echo "$NAME $PROC $(echo $DIR)"
    done
done