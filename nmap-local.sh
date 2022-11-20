nmap-local() {
  network_address=$(ip route | tail -n 1 | cut -d" " -f1)

  echo "Scanning local network: ${network_address}"

  nmap_raport=$(nmap -sn $network_address)

  nmap_raport_grep=$(echo "$nmap_raport" | grep -E "Nmap scan report for|MAC Address:|Device type:")

  nmap_raport_grep_cut=$(echo "$nmap_raport_grep" | cut -d" " -f5-)

  echo "${nmap_raport_grep_cut}"
}