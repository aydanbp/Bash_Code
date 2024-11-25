#!/bin/bash
# Emulating a Stack data structure
# NEITHER REGEX NOR STRING EXTRACTION WORKS BUT CODE IS FULLY FUNCTIONAL OTHERWISE
STACK=()
PUSHREG=~^[0-9]$ #UNUSED :/
TpStk=$1 # ititially tests if parameter 1 is correct but then tests var for endless loop
i=-1
if test $# -ne 1 #TESTING FOR CORRECT PARAMETERS
then
echo "Inncorrect No. of parameters"
exit 0
fi
read -p "---" nextCom
until test $nextCom = "EXIT99" #START OF LOOP
do
if [ $nextCom = "POP" ]
then
if [ $i -ge 0 ]
then
echo ${STACK[$i]} STACK[i]=""
let i=i-1
read -p "---" nextCom
elif [ $i -lt 0 ]
then
#READS TOP OF STACK
echo "STACK EMPTY"
read -p "---" nextCom
fi
#elif [ $nextCom=~^[P][U][S][H][0-9]/*{0}$ ] #REGEX TO FIND PUSH WITH MINIMUM ANY AMOUNT OF NUMBERS
elif [ $nextCom="PUSH" ]
then
if [ $i -lt $TpStk ]
then
let i=i+1
read -p "Number-TEMP " No
#No=${$nextCom:4:2}
STACK[$i]=$No
read -p "---" nextCom
elif [ $i -ge $TpStk ]
then
echo "STACK FULL"
read -p "---" nextCom
fi
done
else
fi
echo "Bye <3"
exit 0
read -p "---" nextCom
