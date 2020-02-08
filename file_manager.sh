#!/bin/bash
apt-get update
apt-get upgrade
apt-get install npm -y
npm i cloudcmd -g
echo "to start: cloudcmd"