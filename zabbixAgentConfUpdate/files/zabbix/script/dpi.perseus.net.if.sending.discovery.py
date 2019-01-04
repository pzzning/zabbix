#!/usr/bin/env python
#zhengning
#20180915


import os
import sys
import json

t=os.popen("cat /etc/psconf/[Pw]*.yaml |sed -n '/sending/,/- \[/p' |grep '\[' |grep -Eo '[a-zA-Z]*[0-9]*'")
ifnames = []
for ifname in  t.readlines():
        r = os.path.basename(ifname.strip())
        ifnames += [{'{#IFNAME}':r}]
print json.dumps({'data':ifnames},sort_keys=True,indent=4,separators=(',',':'))

