#!/bin/bash
#zhengning
#20181205

#check iptables status

timeout 2 ping -c1 114.114.114.114 >/dev/null;

if [ $? -eq 0 ] ;then 

    /sbin/service iptables status>/dev/null;

    if [ $? -eq 0 ] ;then
        #echo ok
        echo 0
    else
        #echo warning
        echo 1
    fi
else
    #echo ok
    echo 0
fi 


