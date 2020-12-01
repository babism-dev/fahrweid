# Info : Pi-hole block youtube Ads (Beta Version 1.1.2)
Prerequisite: Ubuntu 20.x (Server Edition) or Raspberry Pi OS Lite (Linux kernel 5.4.51)
Pi-hole Version (Pi-hole v5.2 Web Interface v5.2 FTL v5.3.1)

### Prerequisite

Download the script

`# git clone https://github.com/babism-dev/fahrweid.git`

Change to directory

`# cd fahrweid`

Make the scripts executable

`# chmod a+x update-ubuntu.sh update-raspi.sh install-pihole-all-version.sh`

If you are using Raspberry Pi or Ubuntu 20.x start first with update-raspi.sh or update-ubuntu.sh

Raspi
`# sudo ./update-raspi.sh`

Ubuntu 20.x
`# sudo ./update-ubuntu.sh`

### Install Pi-hole first

`# curl -sSL https://install.pi-hole.net | bash`
First change in the console the password with `# sudo pihole -a -p`
After the installation please open your browser goto http://<your-IP-address>/admin use your new password.
