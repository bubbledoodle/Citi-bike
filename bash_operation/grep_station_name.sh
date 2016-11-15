#!/bin/bash

rm start_station_name.txt
rm end_station_name.txt

for i in $(seq 9); do 
  awk -F "\"*,\"*" '{print $5}' "20160$i-citibike-tripdata.csv" >> start_station_name.txt
  awk -F "\"*,\"*" '{print $9}' "20160$i-citibike-tripdata.csv" >> end_station_name.txt
done

sort start_station_name.txt | uniq -c | sort -n > sorted_start.txt
sort end_station_name.txt | uniq -c | sort -n > sorted_end.txt
