ip addr add 192.235.15.1/25 dev eth1
ip addr add 192.235.16.61/30 dev eth2
for i in 0 1 2; do ip link set eth$i up; done
udhcpc -i eth0
sysctl -w net.ipv4.ip_forward=1
ip route add 192.235.0.0/19 via 192.235.16.62
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE