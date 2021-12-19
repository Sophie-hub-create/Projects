
import random
from lower_or_higher_data import data
from lower_or_higher_art import *

def findingNumber():
    randomNumber = random.randint(0, len(data)+1)
    return randomNumber

def findData(number):
    dict1 = data[number]
    dataDict1 = dict1.get('name')+", a "+ dict1.get("description")+", from "+dict1.get("country")
    print (dataDict1)

def findFollower(number):
    dict1 = data[number]
    followerDataDict1 = dict1.get("follower_count")
    return int(followerDataDict1)
    
def two():
    print(vs)
    print("Against B: ")
    
counter = 0
again = True
    
print(logo)
print("Compare A: ")
a = findingNumber()
b = findData(a)
c = findFollower(a)
two()
d = findingNumber()
e = findData(d)
f = findFollower(d)
    

while again:  
    
    answer = input("Who has more followers on Instagram? Type 'a' or 'b':  ")
    counter+=1
    
    if c > f and answer == 'a':
        
        print(logo)
        print(f"You're right! Current score: {counter}")
        print("Compare A: ")
        b = findData(a)
        c = findFollower(a)
        two()
        d = findingNumber()
        e = findData(d)
        f = findFollower(d)        
    elif f > c and answer == 'b':
        
        print(logo)
        print(f"You're right! Current score: {counter}")
        print("Compare A: ")
        e = findData(d)
        f = findFollower(d)
        two()
        a = findingNumber()
        b = findData(a)
        c = findFollower(a)
       
    else: 
        print(f"Sorry, that's wrong. Final score: {counter}")
        again = False
        