#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status
set -u  # Treat unset variables as an error

# Install debootstrap
echo "Installing debootstrap..."
apt-get update
apt-get install -y debootstrap

# Create a minimal Debian root filesystem
if [ ! -d "debian-rootfs" ]; then
    echo "Creating Debian root filesystem..."
    debootstrap --arch=amd64 stable debian-rootfs http://deb.debian.org/debian
else
    echo "Debian root filesystem already exists. Skipping."
fi

# Create an empty ext4 image
if [ ! -f "rootfs.ext4" ]; then
    echo "Creating empty ext4 image..."
    dd if=/dev/zero of=rootfs.ext4 bs=1M count=512
    mkfs.ext4 rootfs.ext4
else
    echo "Ext4 image already exists. Skipping."
fi

# Mount the ext4 image
mkdir -p mnt
mount rootfs.ext4 mnt

# Copy the Debian root filesystem into the ext4 image
echo "Copying Debian root filesystem into ext4 image..."
cp -r debian-rootfs/* mnt/
umount mnt

# Finalize rootfs
if [ -f "rootfs.ext4" ]; then
    echo "Rootfs image created and finalized: rootfs.ext4"
else
    echo "Error: rootfs.ext4 was not created successfully."
    exit 1
fi
