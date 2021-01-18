#!/bin/bash
loc="/etc/openvpn"
ls $loc/ovpn_udp/ | grep "nl" | openvpn --config $loc/ovpn_udp/$(shuf -n 1) --auth-user-pass $loc/auth.txt
