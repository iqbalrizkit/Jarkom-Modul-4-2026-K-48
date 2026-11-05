ip addr add 192.235.16.82/30 dev eth0
ip addr add 192.235.14.193/26 dev eth1
ip addr add 192.235.16.85/30 dev eth2
for i in 0 1 2; do ip link set eth$i up; done
sysctl -w net.ipv4.ip_forward=1
ip route add default via 192.235.16.81
ip route add 192.235.14.128/26 via 192.235.16.86
ip route add 192.235.16.0/27 via 192.235.16.86
ip route add 192.235.16.64/28 via 192.235.16.86