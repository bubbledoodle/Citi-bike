#!/bin/bash

for i in $(seq 9); do
  wget http://witestlab.poly.edu/bikes/"20160$i-citibike-tripdata.zip"
done
