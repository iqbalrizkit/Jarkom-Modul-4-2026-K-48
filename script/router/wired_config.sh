ip addr add 192.235.16.62/30 dev eth0
ip addr add 192.235.16.53/30 dev eth1
ip addr add 192.235.16.57/30 dev eth2
ip addr add 192.235.16.41/29 dev eth3
for i in 0 1 2 3; do ip link set eth$i up; done
sysctl -w net.ipv4.ip_forward=1
ip route add default via 192.235.16.61
ip route add 192.235.12.0/23 via 192.235.16.58
ip route add 192.235.15.192/26 via 192.235.16.58
ip route add 192.235.8.0/23 via 192.235.16.54
ip route add 192.235.14.0/24 via 192.235.16.54
ip route add 192.235.16.0/27 via 192.235.16.54
ip route add 192.235.16.48/30 via 192.235.16.54
ip route add 192.235.16.64/28 via 192.235.16.54
ip route add 192.235.16.80/29 via 192.235.16.54
ip route add 192.235.0.0/22 via 192.235.16.42
ip route add 192.235.10.0/23 via 192.235.16.43
ip route add 192.235.15.128/26 via 192.235.16.43
ip route add 192.235.4.0/22 via 192.235.16.44
ip route add 192.235.16.32/29 via 192.235.16.44
ip route add 192.235.16.88/30 via 192.235.16.44