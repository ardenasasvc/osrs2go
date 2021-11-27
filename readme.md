# old school runescape for the guy on the go

a set of configuration files to install a personalized setup of osrs on a raspberry pi 4.
for alex.

## about the project
- **Hardware**: Raspberry Pi 4 Model B Rev 1.2
- **CPU Architecture**: ARM
- **OS**: Ubuntu 21

## requirements
- a 16G or great SD card formatted with Ubuntu using the [raspberry pi imager](https://ubuntu.com/tutorials/how-to-install-ubuntu-desktop-on-raspberry-pi-4#2-prepare-the-sd-cards)

## setup
- with fresh SD card installed, boot raspberry pi and follow initial setup
- once completed, connect the pi to a network of your choosing
- open a terminal
- `sudo apt install git`
- clone this repository: `git clone https://github.com/ardenasasvc/osrs2go.git`
- `cd osrs2go`
- `./tailscale.sh`

## errata
- pi can't use 5ghz wifi networks 

## to-do
- [x] force user password change on login post setup
