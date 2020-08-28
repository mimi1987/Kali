#! /bin/bash

# Do a TCP scan on user based input for IP and PORT.

echo "Please enter IP Address: "

read ip_address

echo "Please enter PORT number: "

read port_number


# Do the TCP scan.

nmap -sT $ip_address -p $port_number > /dev/null -oG Scan-Results.txt


# Output all open port for $port_number.
cat Scan-Results.txt | grep open > Scan-Results-Open.txt

cat Scan-Results-Open.txt
