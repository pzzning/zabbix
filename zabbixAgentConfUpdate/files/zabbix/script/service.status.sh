#!/bin/bash
#zhengning
#20181226

#check service status

/sbin/service $1 status &>/dev/null

echo $?

