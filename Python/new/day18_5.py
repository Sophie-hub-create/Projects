from turtle import *
from random import randint

bella=Turtle()

bella.shape("turtle")
bella.color("purple")
print(bella)
bella.pensize(2)

counter=3
colormode(255)

for j in range(0,10):    
    r = randint(0,255)
    g = randint(0,255)
    b = randint(0,255)
    rgb=[r,g,b]
    bella.pencolor(rgb)
    for i in range(0, counter):
        bella.forward(100)
        bella.right(360/counter)
    counter+=1

myScreen = Screen()
print(myScreen.canvheight)
myScreen.exitonclick()