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
