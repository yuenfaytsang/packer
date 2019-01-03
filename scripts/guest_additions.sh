#!/bin/bash -eux

### Install Virtualbox Guest Additions
mkdir /mnt/vbox
mount -t iso9660 -o loop /tmp/VBoxGuestAdditions.iso /mnt/vbox

### Install the drivers
/mnt/vbox/VBoxLinuxAdditions.run

### Cleanup
umount /mnt/vbox
rm -rf /mnt/vbox /tmp/VBoxGuestAdditions.iso