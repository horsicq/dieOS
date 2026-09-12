#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

# Setup Debian Bookworm repositories
echo "deb http://deb.debian.org/debian/ bookworm main contrib non-free non-free-firmware" > /etc/apt/sources.list
echo "deb http://security.debian.org/debian-security bookworm-security main contrib non-free non-free-firmware" >> /etc/apt/sources.list

apt-get update

# Compile CDiE natively in 32-bit
apt-get install -y cmake build-essential git
cd /
chmod +x build_cdie.sh
./build_cdie.sh
mkdir -p /usr/bin
cp /CDiE/build/src/console/cdie /usr/bin/diec
chmod +x /usr/bin/diec

# Install OS packages (linux-image-686 ensures compatibility without PAE)
apt-get install -y linux-image-686 ntfs-3g systemd-sysv grub-pc live-boot live-config kbd console-data console-setup

# Clean up apt caches to keep ISO small
apt-get clean
rm -rf /var/lib/apt/lists/*