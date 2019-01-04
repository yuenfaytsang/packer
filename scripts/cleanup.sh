#!/bin/bash -eux

# Remove Kernel Headers and old kernels.
yum -y remove kernel-headers kernel-devel kernel-3.10.0-957.el7.x86_64

### Clean yum cache
yum clean all

### Remove files in /tmp
rm -rf /tmp/*

### Set softlink python3 to point to python
ln -s /usr/bin/python /usr/bin/python3

# Zero out the rest of the free space using dd, then delete the written file.
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY

# Add `sync` so Packer doesn't quit too early, before the large file is deleted.
sync
