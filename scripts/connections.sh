#!/bin/bash

choises="VPN+Tunnels\nVPN\nTunnels\nRestart"

chosen=$(echo -e "$choises" | dmenu -i)

case "$chosen" in
    VPN+Tunnels) sudo sh /home/lasse/scripts/vpn.sh ;;
    Tunnels) sudo sh /home/lasse/scripts/tunnels.sh ;;
    VPN) sudo sh /home/lasse/scripts/vpn.sh ;;
    Restart) 
        sudo killall ssh
        sudo sh /home/lasse/scripts/tunnels.sh ;;
esac
