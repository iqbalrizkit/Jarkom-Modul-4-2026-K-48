ip addr add 192.235.12.3/24 dev eth0
ip link set eth0 up
ip route add default via 192.235.12.1