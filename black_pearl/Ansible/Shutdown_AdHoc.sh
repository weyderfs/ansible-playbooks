#!/bin/bash
# In case you need poweroff VMs assap ;)
# You need adjust "-u" parameter for you user
ansible all -m shell -a "sudo poweroff" -u darth

