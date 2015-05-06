#!/bin/bash

PIDS=$(pidof sh $0) # builtin 内置命令
P_array=( $PIDS )
echo $PIDS
echo ${#P_array[*]} # number of instances this sh

let "instances = ${#P_array[*]} - 1" # number of subShell

echo "$instances instance(s) of this script running"
echo "[Hit] Ctl-c to exit";echo

sleep 1
sh $0 # run again

exit 0
