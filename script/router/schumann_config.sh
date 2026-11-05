ip addr add 192.235.16.44/29 dev eth0
ip addr add 192.235.16.33/29 dev eth1
ip addr add 192.235.16.89/30 dev eth2
for i in 0 1 2; do ip link set eth$i up; done
sysctl -w net.ipv4.ip_forward=1
ip route add default via 192.235.16.41
ip route add 192.235.4.0/22 via 192.235.16.90