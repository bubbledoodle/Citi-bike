#!/bin/bash
for i in $(seq 9); do
  unzip "20160$i-citibike-tripdata.zip"
  rm "20160$i-citibike-tripdata.zip"
done
