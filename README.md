this is stuff to initially setup a pi after flashing the SD card

 - flash the card, assumes it'll be mounted as /Volumes/boot on the Mac afterward
 - run the following to copy stuff to the SD card:
    ansible-playbook -i hosts pi-sd-setup.yml
 - unmount the SD from the Mac

boot the pi with the SD card, ssh in as 'pi' with the default password
 - set the hostname
 - set pi's password
 - cd to /boot
 - run "sh 000-README.pi" to install ansible and run the one-time playbook

It is expected that the pi-initial-setup.yml playbook will continue to
evolve over time.  Theoretically it'll be idempotent enough to be able
to be (re)run as needed on existing systems.


