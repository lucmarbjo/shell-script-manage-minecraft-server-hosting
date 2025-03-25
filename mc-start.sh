#!/bin/bash

# Minecraft Startup Script
# Github: https://github.com/cranstonide/linux-minecraft-scripts

# Move into the directory with all Linux-Minecraft-Scripts
cd "$( dirname $0 )"

# Read configuration file
source mc-config.cfg

# Move into the minecraft directory.
cd $minecraftDir

# Start the game in a GNU screen. It will detatch automatically.
screen -dmS minecraft java -Xmx6G -Xms4G -jar $minecraftJar nogui
