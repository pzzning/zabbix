#!/bin/bash
#zhengning
#20190102

#Check system secure: find dangerousfile

find $1 -size $2 |wc -l
