ip addr add 192.235.16.58/30 dev eth0
ip addr add 192.235.12.1/24 dev eth1
ip addr add 192.235.13.1/24 dev eth2
ip addr add 192.235.15.193/26 dev eth3
for i in 0 1 2 3; do ip link set eth$i up; done
sysctl -w net.ipv4.ip_forward=1
ip route add default via 192.235.16.57