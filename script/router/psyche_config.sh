ip addr add 192.235.16.42/29 dev eth0
ip addr add 192.235.0.1/22 dev eth1
for i in 0 1; do ip link set eth$i up; done
sysctl -w net.ipv4.ip_forward=1
ip route add default via 192.235.16.41