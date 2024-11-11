#!/bin/bash

network="192.168.111"  
output_file="allIPs.txt"

echo "Scanning network $network ..."
nmap -sn "$network.11-254" | grep "Nmap scan report for" | awk '{print $NF}' | tr -d '()'  > "$output_file"

echo "Scan complete. Results saved in $output_file"
