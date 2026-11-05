ip addr add 192.235.16.66/29 dev eth0
ip link set eth0 up
ip route add default via 192.235.16.65