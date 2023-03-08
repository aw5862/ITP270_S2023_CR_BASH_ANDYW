#!/bin/bash

echo "Enter the Subnet:"
read Subnet

if ["$Subnet" == ""]
then
	echo "Enter the Subnet:"
	echo "Syntax Example = ./ping_sweep.sh 10.1.79"
else
	for IP in $(seq 1 254); do
		ping -c 1 $Subet.$IP | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" >> discoveredIPs_Wu.txt &
done
fi
