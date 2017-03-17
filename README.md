this is stuff to initially setup a pi after flashing the SD card

setup your working tree:
 - copy wpa_supplicant.conf.example to wpa_supplicant.conf and
    edit in your particular ssid and psk values

every time you flash a card:
 - flash the card, assumes it'll be mounted as /Volumes/boot on the Mac afterward
 - run the following to copy stuff to the SD card:
    sh 000-AFTER-FLASH.sh
 - unmount the SD from the Mac

boot the pi with the SD card, ssh in as 'pi' with the default password
 - set the hostname
 - set pi's password
 - cd to /boot
 - run "sh 000-FIRSTBOOT.sh" to install ansible and run the one-time playbook

It is expected that the pi-initial-setup.yml playbook will continue to
evolve over time.  Theoretically it'll be idempotent enough to be able
to be (re)run as needed on existing systems.

Models tested on, as reported by 'dmesg':

 * Machine model: Raspberry Pi Zero W Rev 1.1
 * Machine model: Raspberry Pi 3 Model B Rev 1.2
 * Machine model: Raspberry Pi Model B Rev 2
 * Machine model: Raspberry Pi Zero Rev 1.3
 
Note: default memory split on the original Pi Zero W Rev 1.1 seems to be
128 MB which leaves very little memory for normal uses.  Run raspi-config
or append "gpu_mem=32" to /boot/config.txt to set it to a more reasonable
value.   You can check after boot by "dmesg | grep lowmem" to see what's left.

