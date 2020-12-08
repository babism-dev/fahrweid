#!/bin/bash
# youtube blocker for ads (Werbung) script done by BabisM
# More information on https://github.com/babism-dev/fahrweid
# last update on 03.12.2020
sudo grep "r*sn-.*" pihole.log | sort | uniq >> /var/www/html/ytblock/yttemp.txt
sudo cat /var/www/html/ytblock/yttemp.txt | awk '{print $6}' | sort | uniq > /var/www/html/ytblock/ytads.txt
sudo pihole -g
exit
