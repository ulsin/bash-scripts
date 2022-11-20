nmap-local() {
  network_address=$(ip route | tail -n 1 | cut -d" " -f1)

  echo "Scanning lcoal network: ${network_address}"

  nmap_raport=$(nmap -sn $network_address)

  echo "${nmap_raport}"
}