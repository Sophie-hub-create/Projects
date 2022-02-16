import colorgram
from turtle import *
from random import*
def dot_painting():
    rgb_colors=[]
    colors=colorgram.extract('images.jpg',20)
    for color in colors:
        rgb_colors.append(color.rgb)
    bella.fillcolor(random.choice(rgb_colors))
    bella.begin_fill()
    bella.circle(10)
    bella.end_fill()
    bella.left(2)
bella=Turtle()

bella.color("purple")
print(bella)
bella.pensize(0.5)

counter=25
colormode(255)
bella.speed("fastest")
for i in range(0, counter):   
    dot_painting()

myScreen = Screen()
print(myScreen.canvheight)
myScreen.exitonclick()