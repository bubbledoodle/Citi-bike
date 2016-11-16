#!/usr/bin/env python3

import pandas as pd

filename = "201601-citibike-tripdata.csv"
df = pd.read_csv(filename, sep = ',')
df = df.loc[:,['start station name', 'birth year']]
df = df.groupby(['start station name']).describe()

file_out = "201601-citibike-tripdata-out.csv"
df.to_csv(file_out, sep=',')
