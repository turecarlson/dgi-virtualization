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
apt-get install gettext nodejs make git -y
cd /tmp
git clone https://github.com/cockpit-project/cockpit-machines
cd cockpit-machines
make
make install

# Install Podman
apt-get install podman podman-compose podman-docker cockpit-podman -y

# Download OPNSense iso
# apt-get install curl -y
# mkdir /iso
# cd /iso 
# curl -O https://mirrors.ocf.berkeley.edu/opnsense//releases/24.1/OPNsense-24.1-dvd-amd64.iso.bz2 #OCF @ UCBerklee
# curl -O https://mirror.wdc1.us.leaseweb.net/opnsense/releases/24.1/OPNsense-24.1-dvd-amd64.iso.bz2 # LeaseWeb East coast
# bzip2 -d OPNSense-24.1-dvd-amd64.iso.bz2

