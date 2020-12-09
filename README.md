# Info : Pi-hole block youtube Ads (Beta Version 1.1.2)
Prerequisite: Ubuntu 20.x (Server Edition) or Raspberry Pi OS Lite (Linux kernel 5.4.51)
Pi-hole Version (Pi-hole v5.2 Web Interface v5.2 FTL v5.3.1)

### Prerequisite

Download the script

`# git clone https://github.com/babism-dev/fahrweid.git`

Change to directory

`# cd fahrweid`

Make the scripts executable

`# chmod a+x *.sh`

If you are using Raspberry Pi or Ubuntu 20.x start first with update-raspi.sh or update-ubuntu.sh

Raspi
`# sudo ./update-raspi.sh`

Ubuntu 20.x
`# sudo ./update-ubuntu.sh`

### Install Pi-hole and first login

`# curl -sSL https://install.pi-hole.net | bash`

Change in the console the password with `# sudo pihole -a -p`

After the installation open your browser goto http://your-IP-address-pihole/admin and use your new password.

Read more about Pi-hole: https://github.com/pi-hole/pi-hole/#one-step-automated-install

### Install YT-ads block

Still testing update 08.12.2020!!

Copy ytblock.sh from /fahrweid to /var/log/ then create a folder (ytblock) in /var/www/html/

`# sudo mkdir /var/www/html/ytblock`

Change to the folder /fahrweid (if your not there)

`# sudo cp ytblock.sh /var/log/`

Run the script once

`# sudo /var/log/ytblock.sh`

Note: This script creates two files yttemp.txt and ytads.txt under /var/www/html/ytblock/ And they are searching in the pihole.log file for r*sn-.* entries these are generated from youtube for ads. If the script are running without any issues you will have some entries in this file "ytads.txt".

To verify this please open the link http://your-IP-address-pihole/ytblock/ytads.txt

Now add this link under Group Management > Adlists. http://your-IP-address-pihole/ytblock/ytads.txt in you pihole (over WebGui)

The last Step is now to add a cron job

`# sudo crontab -e`

`# */60 * * * * /var/log/ytblock.sh` the script are running every 60min
