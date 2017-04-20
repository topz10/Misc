#!/bin/bash
#
#Script Version 1.1 - More info at https://moocat.me/proj/script-clam-scan-email-notification/

SCANFILEDATE=$(date +%d-%m-%Y)
freshclam
clamscan --recursive --infected /home >> /var/log/homeScan_$SCANFILEDATE
sed -i '1i\'"SUBJECT: Clam Scan Results: "$SCANFILEDATE /var/log/homeScan_$SCANFILEDATE
sed -i '2i\'"FROM: email@example.com "$SCANFILEDATE /var/log/homeScan_$SCANFILEDATE
sed -i '3i\'"\n" /var/log/homeScan_$SCANFILEDATE
/usr/sbin/sendmail email@example.com < /var/log/homeScan_$SCANFILEDATE
