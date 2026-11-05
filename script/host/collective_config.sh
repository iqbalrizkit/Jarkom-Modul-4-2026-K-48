ip addr add 192.235.8.2/23 dev eth0
ip link set eth0 up
ip route add default via 192.235.8.1