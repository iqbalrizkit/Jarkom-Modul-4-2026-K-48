ip addr add 192.235.16.86/30 dev eth0
ip addr add 192.235.16.65/29 dev eth1
ip addr add 192.235.16.77/30 dev eth2
for i in 0 1 2; do ip link set eth$i up; done
sysctl -w net.ipv4.ip_forward=1
ip route add default via 192.235.16.85
ip route add 192.235.14.128/26 via 192.235.16.78
ip route add 192.235.16.0/27 via 192.235.16.78
ip route add 192.235.16.72/30 via 192.235.16.78