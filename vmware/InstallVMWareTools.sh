#!/bin/bash

if [[ -f /media/$USER/VMware\ Tools/VMwareTools*.tar.gz ]]
then
# Extract mounted VMWare Tools  to temporary directory
tar xzvf /media/$USER/VMware\ Tools/VMwareTools*.tar.gz -C /tmp/
echo "Installing VMWare Tools."
cd /tmp/vmware-tools-distrib
# Install VMWare Tools with default settings
sudo ./vmware-install.pl -d
else
echo "VMWare Tools are not mounted..."
fi
