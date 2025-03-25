#!/bin/bash

# Script to install dependencies
# DEBIAN 

cd / & mkdir minecraft

cd minecraft & mkdir admin-scripts

cd minecraft & mkdir admin-backups

cd minecraft & mkdir admin-logs

cd / 

sudo apt install git-all -y -q

sudo apt-get install screen -y -q

sudo apt-get install openjdk-17-jre-headless -y -q

sudo apt install ufw -y -q

cd /minecraft/admin-scripts

sudo git clone https://github.com/lucmarbjo/shell-script-manage-minecraft-server-hosting admin-scripts

sudo ufw enable

sudo ufw allow 25565/tcp

sudo ufw allow 25565/udp

