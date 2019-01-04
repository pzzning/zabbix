#!/bin/bash
#zhengning
#20181127

#test1
#sum1=`/usr/local/bin/zcdrop $1 |awk '{sum=sum+$NF}END{print sum}'`
#sleep 3
#/usr/local/bin/zcdrop $1 |awk -v sum1=$sum1 '{sum2=sum2+$NF}END{print sum2-sum1}'

#test2
#/usr/local/bin/zcdrop $1 |awk '{sum=sum+$NF}END{print sum}'

#test3
LastNumber=`cat /tmp/zcdrop_last_$1`
NowNumber=`/usr/local/bin/zcdrop $1 |awk '{sum=sum+$NF}END{print sum}' |tee /tmp/zcdrop_last_$1`
echo " "|awk -v v1=$LastNumber -v v2=$NowNumber '{print v2-v1}'
