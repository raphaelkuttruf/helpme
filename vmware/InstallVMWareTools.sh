# Mount VMWare Tools as CD
tar xzvf /media/$USER/VMware\ Tools/VMwareTools*.tar.gz -C /tmp/
cd /tmp/vmware-tools-distrib
# Install with default settings
sudo ./vmware-install.pl -d
