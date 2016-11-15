#!/bin/bash

for i in $(seq 9); do
  if ! [ -f "20160$i-citibike-tripdata.csv" ]; then
    if ! [ -f  "20160$i-citibike-tripdata.zip" ]; then
       wget http://witestlab.poly.edu/bikes/"20160$i-citibike-tripdata.zip"
    fi
  unzip "20160$i-citibike-tripdata.zip"
  fi
  rm "20160$i-citibike-tripdata.zip"
done
