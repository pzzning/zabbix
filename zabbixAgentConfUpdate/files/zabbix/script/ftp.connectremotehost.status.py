#!/usr/bin/python
#-*- coding: UTF-8 -*-
#zhengning
#20181126

import sys
from ftplib import FTP
def ftp_open(host='',port='21',user='',passwd=''): 
    try:
        ftp=FTP()
        ftp.connect(host,port,3)
        data=ftp.login(user,passwd)
        return 1
    except:
        return 0
if __name__=='__main__':
    if ftp_open(sys.argv[1],sys.argv[2],sys.argv[3],sys.argv[4]):
        #print "Open FTP success"
        print 1
    else:
        #print "Open FTP failed"
        print 0

#cat -v /etc/newiup/newiup-conf.yaml|sed 's/\^M//g'|egrep 'addr|username|passwd' |awk '{printf ((NR%3==0)?$0"\n":$0"\t")}'|sort -u

