apt update
apt upgrade

# Install Sudo & add dgiadmin user to group
apt-get install sudo -y
adduser dgiadmin sudo

# Install virtualization tools 
apt-get install virt-manager qemu-system-x86 qemu-utils libvirt-daemon-system ovmf libvirt-dbus -y

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
# bzip2 -d /iso/OPNsense-24.1-dvd-amd64.iso.bz2

# Download VM images from cloud
# TODO

