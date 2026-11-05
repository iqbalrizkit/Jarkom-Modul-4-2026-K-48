ip addr add 192.235.16.2/27 dev eth0
ip link set eth0 up
ip route add default via 192.235.16.1