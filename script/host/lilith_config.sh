ip addr add 192.235.14.2/25 dev eth0
ip link set eth0 up
ip route add default via 192.235.14.1