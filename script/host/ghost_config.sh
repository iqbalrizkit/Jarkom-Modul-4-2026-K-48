ip addr add 192.235.8.3/23 dev eth0
ip link set eth0 up
ip route add default via 192.235.8.1