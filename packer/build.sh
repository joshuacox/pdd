#!/bin/bash
rm -r vendor
rm Berksfile.lock
berks vendor vendor/cookbooks
#/usr/bin/time -v packer build -debug --only=virtualbox-iso pdd-debian-7.7-i386.json
/usr/bin/time -v packer build --only=virtualbox-iso pdd-debian-7.7-i386.json
# qemu only gives errors, because vagrant cant find the virtualbox image
#/usr/bin/time -v packer build -debug --only=qemu pdd-debian-7.7-i386.json
#/usr/bin/time -v packer build --only=qemu pdd-debian-7.7-i386.json
#/usr/bin/time -v packer build -parallel=false --only=qemu,virtualbox-iso pdd-debian-7.7-i386.json
#/usr/bin/time -v packer build pdd-debian-7.7-i386.json
# beeper
aplay /usr/share/sounds/alsa/Front_Center.wav
# ogg123 /usr/share/sounds/KDE-Im-Irc-Event.ogg
