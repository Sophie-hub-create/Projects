from turtle import *
import random

race_is_on = False

    
    
screen = Screen()
screen.screensize(500,400)
colors= ["yellow", "orange", "red", "green", "blue", "purple"]
x = -250
y = [-150,-100,-50,0,50,100]
all_turtles=[]
for color in range(0,6):
    new_turtle = Turtle("turtle")
    new_turtle.color(colors[color])
    new_turtle.penup()
    new_turtle.goto(x,y[color])
    all_turtles.append(new_turtle)
    
user_bet = screen.textinput("make your bet", "Which turtle wins the race? Enter a color:")

if( user_bet):
    race_is_on = True

while(race_is_on):
    for turtle in all_turtles:
        random_distance = random.randint(0,10)
        turtle.forward(random_distance)
        if(turtle.xcor()>230):
            race_is_on = False
            result=(turtle.fillcolor())
            if(user_bet==result):
                print( "\nyou won the bet, "+result+' is the winner \n')
            else:
                print('\nYou lost the bet, '+result+' won the race\n')
        
    
    
screen.exitonclick()