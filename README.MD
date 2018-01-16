# Autolock Screen after certain time

## Files

* getIdle.c
  * Report amount of X server idle time in ms
  * Build with: gcc getidle.c -o getidle -lX11 -lXext -lXss
* idlelock.sh
  * bash script for executing i3lock etc
* idlelocker.service
  * systemd service
* idlelocker.timer 
  * systemd timer