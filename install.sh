#!/bin/sh

#sudo echo 'hdmi_force_hotplug=1' >> /boot/config.txt

REPO=`pwd`

cd $REPO/src
gcc -o $REPO/bin/tempctl temp_control.c ssd1306_i2c.c -pthread -lwiringPi -lm -lrt -lcrypt

# cd ~/.config/
# mkdir ~/.config/autostart
# cd ~/.config/autostart
# cp ~/temp_control/start.desktop ~/.config/autostart/

echo 'install ok!'
