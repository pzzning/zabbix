#!/bin/bash
#zhengning
#20180915


ping ${1} -c${2} |grep -Eo '[0-9]+%'|sed 's/%//g'

