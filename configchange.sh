#!/bin/bash
path=/etc/ssh/sshd_config
sudo sed -c -i.bak "s/PermitRootLogin no/PermitRootLogin yes/g" $path
server=$(hostname)
echo Hostname - $server
nodif=$(sudo diff $path $path.bak)
if($nodif)
then
echo No changes made on $path like below
sudo cat /etc/ssh/sshd_config | grep PermitRootLogin
else
echo In this $path modified these lines $nodif
sudo service sshd restart
fi
