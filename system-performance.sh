#!/bin/bash

###########################################

#Author : Aso Maarooufiniyaa

#This code is written for checking the system performance such as Cpu , Memory and Disk performance 



echo "=============================="
echo " SYSTEM PERFORMANCE CHECK"
echo "=============================="

echo "Calculating CPU..."
sleep 1

cpu=$(top -bn1 | awk -F',' '/Cpu/ {for(i=1;i<=NF;i++) if($i ~ /id/) {gsub(/[^0-9.]/,"",$i); print 100-$i}}')

echo "CPU Usage: $cpu%"

if [ "$(echo "$cpu < 80" | bc -l)" -eq 1 ]; then
    echo "CPU is OK✅"
else
    echo "CPU is NOT OK🚫"
fi


echo "------------------------------"
echo "Calculating Memory..."
sleep 1

mem=$(free | awk 'NR==2{print $3/$2*100}')

echo "Memory Usage: $mem%"

if [ "$(echo "$mem < 80" | bc -l)" -eq 1 ]; then
    echo "Memory is OK✅"
else
    echo "Memory is NOT OK🚫"
fi

echo "-------------------------------"
echo "Calculating Disk..."


disk=$(df | awk '$NF=="/"{print $5}' | tr -d '%')

echo "Disk Usage: $disk%"

if [ $disk -lt 80 ]; then
       echo "Disk is OK✅"
else
       echo "Disk is not OK🚫"
fi       
