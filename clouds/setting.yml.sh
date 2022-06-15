#!/bin/bash
myuser=user
date=$(date '+%Y-%m-%d_%H:%M')
key=${myuser}_${date}
mkdir ./tmp
mkdir ./files
ssh-keygen -b 2048 -t rsa -f ./tmp/${key} -q -N ""
ansible-playbook -u docker -i -inventory set.yml  -f 4  --ask-pass --ask-become-pass