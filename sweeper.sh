ifconfig
printf "IP addresses will be displayed in reverse. Why? I don't know."
printf "Enter first octet of LAN address:\n"
read o1
printf "Enter second octet:\n"
read o2
printf "Enter third octet:\n"
read o3

for i in $(seq 254); do nslookup ${o1}.${o2}.${o3}.${i} & done | grep name
