#!/bin/bash
#zhengning
#20181016


if [ "${1}" != "Total" ];then
/usr/local/bin/pescli localhost show |sed -n '/RECV/,/Total/p'|grep -v Total|grep "${1}]:" |awk '{print $3}' |sed 's/M,//g'
else
/usr/local/bin/pescli localhost show |sed -n '/RECV/,/Total/p'|grep "${1}" |awk -F\: '{print $2}' |sed 's/ //g'|sed 's/M,/ /g'|awk '{print $1}'
fi
