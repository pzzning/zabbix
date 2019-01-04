#!/bin/bash
#zhengning
#20180915


flow_nouser=`/usr/local/bin/pescli localhost counter |egrep 'flow.nouser]' | sed 's/[[:space:]]//g'|awk -F\, '{print $2}'`;
flow_destory=`/usr/local/bin/pescli localhost counter |egrep 'flow.destory]' | sed 's/[[:space:]]//g'|awk -F ',' '{print $2}'`;
echo "$flow_nouser $flow_destory" |awk '{print ($2-$1)*100/($2+1)}'

