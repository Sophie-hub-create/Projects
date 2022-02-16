from turtle import *
import random

bella=Turtle()
bella.color("purple")
print(bella)
stopWalking= random.randint(0,500)
colormode(255)
choice=["f", "r", "l"]
bella.pensize(5)
for j in range(0,stopWalking):    
    r = random.randint(0,255)
    g = random.randint(0,255)
    b = random.randint(0,255)
    rgb=[r,g,b]
    bella.pencolor(rgb)
    
    what=random.choice(choice)
    if what =="l":
        bella.left(90)
        bella.forward(random.randint(0,100))
    elif what=="r":
        bella.right(90)
        bella.forward(random.randint(0,100))
    else:
        bella.forward(random.randint(0,100))
    

myScreen = Screen()
myScreen.exitonclick()