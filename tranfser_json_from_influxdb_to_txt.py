#!/usr/bin/env python 

import json 

with open("/tmp/all_data_json.txt","r") as f1:
    file = f1.read()
    m = json.loads(file)


with open("/tmp/all_data_plain.txt","w") as f2:
    for i in m["results"][0]["series"][0]["values"]:
        t = "domain: {} request_url: {} status_code: {}".format(i[1].ljust(25,' '),
                                                                i[2].ljust(60,' '),
                                                                i[3].ljust(10,' ') ) 
        f2.write(t + '\n')
