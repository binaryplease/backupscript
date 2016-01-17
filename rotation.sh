#!/bin/bash
echo "Rotating Backps"

echo "removing backup.4"
rm -rvf /mnt/usb1/backups/backup.4 



echo "moving 3 to 4"
mv /mnt/usb1/backups/backup.3 /mnt/usb1/backups/backup.4
echo "moving 2 to 3"
mv /mnt/usb1/backups/backup.2 /mnt/usb1/backups/backup.3 
echo "moving 1 to 2"
mv /mnt/usb1/backups/backup.1 /mnt/usb1/backups/backup.2 
echo "moving 0 to 1"
mv /mnt/usb1/backups/backup.0 /mnt/usb1/backups/backup.1 
