#!/bin/bash

echo -n "#Architecture: ";	uname -a;
echo -n "#CPU physical : ";	lscpu | awk 'NR==5{print $NF}';
echo -n "#vCPU : ";		cat /proc/cpuinfo | grep processor | wc -l;
echo -n "#Memory Usage: ";	free --mega | grep Me | awk '{
printf("%s/%sMB (%4.2f%%)\n", $3, $2, 100*($3/$2))
}'
