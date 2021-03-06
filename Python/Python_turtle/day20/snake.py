from turtle import Turtle

START_POSITIONS =[(0,0), (-20,0), (-40,0)]
MOVE_DISTANCE = 20

class Snake:
    def __init__(self) :
        self.segments=[]
        self.create_snake()
        
    def create_snake(self):
        for positions in START_POSITIONS:
            new_segment=Turtle('square')
            new_segment.color('white')
            new_segment.penup()
            new_segment.goto(positions)
            self.segments.append(new_segment)
    
    def move(self):
        for segm_num in range(len(self.segments) -1, 0 , -1):          #start, stop, step
            new_x = self.segments[segm_num -1].xcor()
            new_y = self.segments[segm_num -1].ycor()
            self.segments[segm_num].goto(new_x,new_y)
        self.segments[0].forward(MOVE_DISTANCE)
        
    def up(self):
        self.segments[0].setheading(90)
    
    def down(self):
        self.segments[0].setheading(270)

    def left(self):
        self.segments[0].setheading(180)
    

    def right(self):
        self.segments[0].setheading(0)
    