#!/bin/bash

ssh-keygen -f '/home/rich/.ssh/known_hosts' -R 'docker'
ssh-keygen -f '/home/rich/.ssh/known_hosts' -R 'icinga'
ssh-keygen -f '/home/rich/.ssh/known_hosts' -R 'hesk'
ssh-keygen -f '/home/rich/.ssh/known_hosts' -R 'kanboard'
ssh-keygen -f '/home/rich/.ssh/known_hosts' -R 'grafana'
ssh-keygen -f '/home/rich/.ssh/known_hosts' -R 'syslog'
ssh-keygen -f '/home/rich/.ssh/known_hosts' -R 'docker1'
ssh-keygen -f '/home/rich/.ssh/known_hosts' -R 'ns1'
ssh-keygen -f '/home/rich/.ssh/known_hosts' -R 'ns2'

