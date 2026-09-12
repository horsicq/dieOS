#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

# Enable universe for live packages
echo "deb http://archive.ubuntu.com/ubuntu/ jammy universe" >> /etc/apt/sources.list
echo "deb http://archive.ubuntu.com/ubuntu/ jammy-updates universe" >> /etc/apt/sources.list

apt-get update
apt-get install -y linux-image-generic ntfs-3g systemd-sysv grub-pc casper live-boot live-boot-initramfs-tools

# Clean up apt caches to keep ISO small
apt-get clean
rm -rf /var/lib/apt/lists/*