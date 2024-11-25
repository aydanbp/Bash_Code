{\rtf1\ansi\ansicpg1252\cocoartf2820
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cspthree\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f0\fs13\fsmilli6750 \cf2 #!/bin/bash\
# Emulating a Stack data structure\
# NEITHER REGEX NOR STRING EXTRACTION WORKS BUT CODE IS FULLY FUNCTIONAL OTHERWISE\
STACK=()\
PUSHREG=~^[0-9]$ #UNUSED :/\
TpStk=$1 # ititially tests if parameter 1 is correct but then tests var for endless loop\
i=-1\
if test $# -ne 1 #TESTING FOR CORRECT PARAMETERS\
then\
echo "Inncorrect No. of parameters"\
exit 0\
fi\
read -p "---" nextCom\
until test $nextCom = "EXIT99" #START OF LOOP\
do\
if [ $nextCom = "POP" ]\
then\
if [ $i -ge 0 ]\
then\
echo $\{STACK[$i]\} STACK[i]=""\
let i=i-1\
read -p "---" nextCom\
elif [ $i -lt 0 ]\
then\
#READS TOP OF STACK\
echo "STACK EMPTY"\
read -p "---" nextCom\
fi\
#elif [ $nextCom=~^[P][U][S][H][0-9]/*\{0\}$ ] #REGEX TO FIND PUSH WITH MINIMUM ANY AMOUNT OF NUMBERS\
elif [ $nextCom="PUSH" ]\
then\
if [ $i -lt $TpStk ]\
then\
let i=i+1\
read -p "Number-TEMP " No\
#No=$\{$nextCom:4:2\}\
STACK[$i]=$No\
read -p "---" nextCom\
elif [ $i -ge $TpStk ]\
then\
echo "STACK FULL"\
read -p "---" nextCom\
fi\
done\
else\
fi\
echo "Bye <3"\
exit 0\
read -p "---" nextCom}