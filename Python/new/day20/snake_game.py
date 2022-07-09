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

for positions in start_positions:
    new_segment=Turtle('square')
    new_segment.color('white')
    new_segment.penup()
    new_segment.goto(positions)
    segments.append(new_segment)
    screen.update()
    
game_is_on=True

while game_is_on:
    time.sleep(0.1)
    for segment in segments:
        segment.forward(20)
        
    screen.update()


print(screen)
screen.exitonclick()