# initial updates
apt update
apt upgrade

# Install Sudo & add dgiadmin user to group
apt-get install sudo -y
adduser dgiadmin sudo

# Install virtualization tools 
apt-get install virt-manager qemu-system-x86 qemu-utils libvirt-daemon-system ovmf -y

# Install Cockpit
apt-get install cockpit -y

# Install Cockpit-Machines
apt-get install cockpit-machines -y

# # Install Cockpit-Machines from Source
# apt-get install gettext nodejs make git -y
# cd /tmp
# git clone https://github.com/cockpit-project/cockpit-machines
# cd cockpit-machines
# make
# make install

# Install Podman
apt-get install podman podman-compose podman-docker cockpit-podman -y

# # Download OPNSense iso
# mkdir /iso
# $OPNSenseISO = https://mirrors.ocf.berkeley.edu/opnsense//releases/24.1/OPNsense-24.1-dvd-amd64.iso.bz2 #OCF @ UCBerklee 
# $OPNSenseISO =  https://mirror.wdc1.us.leaseweb.net/opnsense/releases/24.1/OPNsense-24.1-dvd-amd64.iso.bz2 # LeaseWeb East coast
# wget -P iso/ $OPNSenseISO
# bzip2 -d /iso/OPNSense-24.1-dvd-amd64.iso.bz2

# Download VM images from cloud
# TODO

# Configure/Start VM images
# TODO

# TODO determine what to do about network adapters
# should we set a static IP for the host device on the bridge?
# which should enp1s0 always be the LAN interface?git 