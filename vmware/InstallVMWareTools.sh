#!/bin/bash

# Search for mounted VMWare Tools package
files=$(ls /media/$USER/VMware\ Tools/VMwareTools*.tar.gz 2> /dev/null | wc -l)
if [ "$files" == "1" ] # one Package found
then
    # Extract mounted VMWare Tools to temporary directory
    tar xzvf /media/$USER/VMware\ Tools/VMwareTools*.tar.gz -C /tmp/
    echo "Installing VMWare Tools."
    cd /tmp/vmware-tools-distrib
    # Install VMWare Tools with default settings
    sudo ./vmware-install.pl -d
else
    echo "VMWare Tools are not mounted @ /media/$USER/VMware\ Tools/..."
fi
