#!/bin/bash

for slot in {0..5500};
do
echo -ne "CLUSTER ADDSLOTS ${slot}\r\n"
done #| redis-cli -h cluster-a -p 6379 --pipe

for slot in {5501..11000};
do
echo -ne "CLUSTER ADDSLOTS ${slot}\r\n"
done #| redis-cli -h cluster-b -p 6378 --pipe

for slot in {11001..16500};
do
echo -ne "CLUSTER ADDSLOTS ${slot}\r\n"
done #| redis-cli -h cluster-c -p 6377 --pipe

