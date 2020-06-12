#!/bin/bash
#configchangeexe.sh
username=root
for i in 'cat ip.txt'
do
ssh ${username}@${i} 'bash -s' < configchange.sh
done
