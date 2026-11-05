ip addr add 192.235.16.43/29 dev eth0
ip addr add 192.235.10.1/23 dev eth1
ip addr add 192.235.15.129/26 dev eth2
for i in 0 1 2; do ip link set eth$i up; done
sysctl -w net.ipv4.ip_forward=1
ip route add default via 192.235.16.41