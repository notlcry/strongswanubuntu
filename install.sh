apt-get -y install strongswan strongswan-plugin-xauth-generic

sysctl -w net.ipv4.ip_forward=1
sysctl -w net.ipv4.ip_forward=1
iptables -t nat -A POSTROUTING -s 172.31.3.0/24 -o eth0 -j MASQUERADE
ipsec restart
