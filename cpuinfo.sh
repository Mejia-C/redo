#!/bin/bash
echo "Current User"
hostname
echo "CPU name and speed"
lscpu | grep "MHz"
lscpu | grep "Model name"
echo "Free and Total Memory"
vmstat -s | grep "total memory"
vmstat -s | grep "free memory"
echo "Free and Total swap space"
vmstat -s | grep "total swap"
vmstat -s | grep "free swap"
echo "IP and subnet"
ip -o -f inet addr show | awk '/scope global/ {print $4}'
