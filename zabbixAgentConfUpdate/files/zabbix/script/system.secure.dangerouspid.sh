#!/bin/bash
#zhengning
#20190102

#Check system secure: find dangerouspid

lsof |grep $1 |wc -l
