nmap_local () {
	network_address=$(ip route | tail -n 1 | cut -d" " -f1)
	nmap -sn $network_address
}

sshfs_t470 () {
	laptop_ip=192.168.50.30
	echo $laptop_ip
	sudo sshfs -o allow_other,follow_symlinks cere@$laptop_ip: /run/media/ulsin/T470
}
