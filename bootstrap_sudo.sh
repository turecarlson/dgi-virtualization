# initial updates
apt update
apt upgrade

# Install Sudo & add dgiadmin user to group
apt-get install sudo -y
usermod -aG sudo dgiadmin

# Install virtualization tools 
apt-get install \
virt-manager \
qemu-system-x86 \
qemu-utils \
libvirt-daemon-system \
ovmf \
libvirt-dbus \
-y

# Install Cockpit
apt-get install cockpit cockpit-pcp -y
# Set cockpit port to 443 (default for https connections)
mkdir /etc/systemd/system/cockpit.socket.d/
echo -e "[Socket]\nListenStream=\nListenStream=443" > /etc/systemd/system/cockpit.socket.d/listen.conf
systemctl daemon-reload
systemctl restart cockpit.socket

# Install Cockpit-Machines
apt-get install cockpit-machines -y

# Install Podman
apt-get install \
podman \
podman-compose \
podman-docker \
cockpit-podman \
-y

# # Download OPNSense iso
# mkdir /iso
# $OPNSenseISO = https://mirrors.ocf.berkeley.edu/opnsense//releases/24.1/OPNsense-24.1-dvd-amd64.iso.bz2 #OCF @ UCBerklee 
# $OPNSenseISO =  https://mirror.wdc1.us.leaseweb.net/opnsense/releases/24.1/OPNsense-24.1-dvd-amd64.iso.bz2 # LeaseWeb East coast
# wget -P iso/ $OPNSenseISO
# bzip2 -d /iso/OPNsense-24.1-dvd-amd64.iso.bz2

# Download VM images from cloud
# TODO

