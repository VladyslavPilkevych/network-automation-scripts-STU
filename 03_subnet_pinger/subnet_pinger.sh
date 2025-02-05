#!/bin/bash

if [[ "$1" == "--help" ]]; then
    echo "Usage:"
    echo "This script pings all IP addresses in the specified /24 subnet (first three bytes)."
    echo "Syntax: $0 <first three bytes of an IPv4 address> or"
    echo "Without parameters: enter the first three bytes interactively."
    echo "Example: $0 192.168.1 (or 10.10.10)"
    exit 0
fi

if [[ -n "$1" ]]; then
    SUBNET="$1"
else
    read -p "Enter the first three bytes of an IPv4 address (e.g., 10.10.10): " SUBNET
fi

if [[ ! "$SUBNET" =~ ^([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})$ ]]; then
    echo "Error: Invalid IP address format. Use the format XXX.XXX.XXX."
    exit 1
fi

counter=0
total=254

for HOST in $(seq 1 1 254); do
    IP="$SUBNET.$HOST"
    echo "Pinging $IP..."
    ping -c 3 -W 1 "$IP" | awk '/64 bytes/ {print $0}' | head -n 2 | tail -n 1 >> successful_pings.txt &
    counter=$((counter + 1))
    echo "Progress: $counter/$total completed."
    sleep 0.1
done

wait

echo "The following IP addresses responded to the second packet:"
cat successful_pings.txt

rm successful_pings.txt
