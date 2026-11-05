ip addr add 192.235.16.50/30 dev eth0
ip addr add 192.235.14.1/25 dev eth1
ip addr add 192.235.16.81/30 dev eth2
for i in 0 1 2; do ip link set eth$i up; done
sysctl -w net.ipv4.ip_forward=1
ip route add default via 192.235.16.49
ip route add 192.235.14.128/25 via 192.235.16.82
ip route add 192.235.16.0/27 via 192.235.16.82
ip route add 192.235.16.64/28 via 192.235.16.82
ip route add 192.235.16.84/30 via 192.235.16.82