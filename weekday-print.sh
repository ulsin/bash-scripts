# Weekday print
if [[ "$(date +%A)" == "Wednesday" ]]; then
    echo "it's"
    date +%A | figlet | lolcat -h 0.5 -r
    echo "                                     my dudes..."
else
  pfetch
fi