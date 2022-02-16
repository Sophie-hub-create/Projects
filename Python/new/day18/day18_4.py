from turtle import *


timmy=Turtle()
print(timmy)
timmy.shape("turtle")
timmy.color("purple")
for j in range(0,30):
    timmy.forward(40)
    for i in range(0,4):
        timmy.pendown()
        timmy.forward(20)
        timmy.penup()
        timmy.forward(20)
        timmy.left(90)
        timmy.pendown()
        timmy.forward(30)

myScreen = Screen()
myScreen.exitonclick()