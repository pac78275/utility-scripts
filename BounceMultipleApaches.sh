for i in /etc/rc2.d/*apache-*; do echo $i; $i $1;done
