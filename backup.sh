#!/bin/bash

sudo ssh -i /home/binaryplease/.ssh/id_rsa binaryplease@odroid 'bash -s' < rotation.sh  


echo 'Starting rsync command'
sudo rsync -e 'ssh -i /home/binaryplease/.ssh/id_rsa' -aAXvP --progress --delete --delete-excluded --link-dest=../backup.1 --exclude-from="./exclude" / binaryplease@odroid:/mnt/usb1/backups/backup.0/

