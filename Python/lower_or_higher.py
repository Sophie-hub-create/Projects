
import random
from lower_or_higher_data import data
from lower_or_higher_art import *
print(logo)

print(vs)

data1 = random.randint(0, len(data))
print(data1)

dict1 = data[data1]
print(dict1)

dataDict1 = dict1.get('name')+", a "+ dict1.get("description")+", from "+dict1.get("country")
print(dataDict1)

followerDataDict1 = dict1.get("follower_count")

print (followerDataDict1)