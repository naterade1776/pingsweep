ifconfig

printf "Enter first octet of LAN address:\n"
read o1
printf "Enter second octet:\n"
read o2
printf "Enter third octet:\n"
read o3

for i in $(seq 254); do ping ${o1}.${o2}.${o3}.${i} -c1 -W1 & done | grep from
