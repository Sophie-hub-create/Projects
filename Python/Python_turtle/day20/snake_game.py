from operator import truediv
from turtle import*
import time

screen = Screen()
screen.setup(width=600, height=600)
screen.bgcolor("black")
screen.title('My Snake Game')
screen.tracer(0)

start_positions =[(0,0), (-20,0), (-40,0)]
segments=[]

#creating snake
for positions in start_positions:
    new_segment=Turtle('square')
    new_segment.color('white')
    new_segment.penup()
    new_segment.goto(positions)
    segments.append(new_segment)
    screen.update()
    
#moving snake   
game_is_on=True

while game_is_on:
    time.sleep(0.1)
    for segm_num in range(len(segments) -1, 0 , -1):          #start, stop, step
        new_x = segments[segm_num -1].xcor()
        new_y = segments[segm_num -1].ycor()
        segments[segm_num].goto(new_x,new_y)
    segments[0].forward(20)
    screen.update()


print(screen)
screen.exitonclick()