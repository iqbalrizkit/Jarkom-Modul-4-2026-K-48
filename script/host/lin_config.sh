ip addr add 192.235.0.3/22 dev eth0
ip link set eth0 up
ip route add default via 192.235.0.1