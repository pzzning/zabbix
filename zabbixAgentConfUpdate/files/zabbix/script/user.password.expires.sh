#!/bin/bash
#zhengning
#20181229

#Check user password expires time

cat /etc/shadow |awk -F\: -v var1=$1 '(strftime("%s",systime())/3600/24 + var1)>=(($5=="")?999999:($3+$5)){printf $1","}'


