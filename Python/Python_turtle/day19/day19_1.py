from turtle import*
def moving_forwards():
    bella.forward(10)
    
def moving_back():
    
    bella.backward(10)

def moving_left():
    bella.left(10)
    

def moving_right():
    bella.right(10)

def clear_home():
    bella.clear()
    bella.penup()
    bella.home()
    bella.pendown()    
    
bella=Turtle()
bella.pensize(2)
bella.color("purple")
bella.pencolor("purple")
myScreen=Screen()
myScreen.listen()
myScreen.onkey(moving_forwards, "w")
myScreen.onkey(moving_back, "s")
myScreen.onkey(moving_left,"a")
myScreen.onkey(moving_right, "d")
myScreen.onkey(clear_home, "c")


myScreen.exitonclick()