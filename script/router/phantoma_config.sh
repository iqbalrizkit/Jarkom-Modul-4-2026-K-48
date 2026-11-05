ip addr add 192.235.16.78/30 dev eth0
ip addr add 192.235.16.1/27 dev eth1
ip addr add 192.235.16.73/30 dev eth2
for i in 0 1 2; do ip link set eth$i up; done
sysctl -w net.ipv4.ip_forward=1
ip route add default via 192.235.16.77
ip route add 192.235.14.128/26 via 192.235.16.74