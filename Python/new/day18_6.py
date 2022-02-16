from turtle import *
import random

bella=Turtle()
bella.color("purple")
print(bella)
stopWalking= random.randint(0,300)
colormode(255)
choice=["f", "r", "l"]
bella.pensize(10)
for j in range(0,stopWalking):    
    r = random.randint(0,255)
    g = random.randint(0,255)
    b = random.randint(0,255)
    rgb=[r,g,b]
    bella.pencolor(rgb)
    
    what=random.choice(choice)
    if what =="l":
        bella.left(random.randint(0,50))
    elif what=="r":
        bella.right(random.randint(0,50))
    else:
        bella.forward(random.randint(0,50))
    

myScreen = Screen()
myScreen.exitonclick()