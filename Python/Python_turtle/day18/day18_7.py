from turtle import *
from random import randint
def circle_drawing():
    r = randint(0,255)
    g = randint(0,255)
    b = randint(0,255)
    rgb=[r,g,b]
    bella.pencolor(rgb)
    bella.circle(100)
    bella.left(2)
bella=Turtle()

bella.color("purple")
print(bella)
bella.pensize(0.5)

counter=360
colormode(255)
bella.speed("fastest")
for i in range(0, counter):   
    circle_drawing()

myScreen = Screen()
print(myScreen.canvheight)
myScreen.exitonclick()