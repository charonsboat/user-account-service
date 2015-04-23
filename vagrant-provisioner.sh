#!/bin/bash

printf "Launching Vagrant Machine & Updating Box..."
# make sure the box is fully up to date
apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y
