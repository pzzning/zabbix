#!/bin/bash
#zhengning
#20180915

#ip a|grep $1":" |grep -Eo 'state [A-Z]+' |awk '{print $2}'

#20181127 update
/sbin/ip a|grep $1":" |grep -Eo 'state [A-Z]+' |awk 'END{print ($2=="UP")?1:0}'

