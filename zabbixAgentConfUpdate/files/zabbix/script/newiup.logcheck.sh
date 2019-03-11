#!/bin/bash
#zhengning
#20190311

#newiup.logcheck

CountTxt=`ls /home/newiuplog|grep -v running|grep txt -c`
CountLog=`ls /home/newiuplog|grep -v running|grep log -c`
[[ $CountTxt == $CountLog ]] && echo 1 ||echo 0
