function f3script() {


echo "reading from: $1"
logfile="$(echo $1 | rev | cut -d/ -f2 | rev)-$(date +'%y-%m-%d').txt"

echo "storing in file: $logfile"

f3write $1 | tee -a $logfile && \
f3read $1 | tee -a $logfile

}
