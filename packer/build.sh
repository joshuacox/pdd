#!/bin/bash
rm -r vendor
berks vendor vendor/cookbooks
/usr/bin/time -v packer build --only=virtualbox-iso pdd-debian-7.6-i386.json
#/usr/bin/time -v packer build -debug --only=virtualbox-iso debian-chef.json
# beeper
aplay /usr/share/sounds/alsa/Front_Center.wav
# ogg123 /usr/share/sounds/KDE-Im-Irc-Event.ogg
