#!/bin/bash
#zhengning
#20180915

flow_gap=`    /usr/local/bin/pescli localhost counter |egrep 'flow.gap]' | sed 's/[[:space:]]//g'|awk -F\, '{print $2}'`;
flow_tcp=`    /usr/local/bin/pescli localhost counter |egrep 'flow.tcp]' | sed 's/[[:space:]]//g'|awk -F\, '{print $2}'`;
echo "$flow_gap $flow_tcp" |awk '{print $1 * 100 / ($2 + 1)}'

