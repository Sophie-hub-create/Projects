# import turtle
# import another


# timmy = turtle.Turtle()
# print(timmy)
# timmy.shape("turtle")
# timmy.color("purple")
# timmy.speed("slowest")
# timmy.forward(100)

# my_screen = turtle.Screen()
# print(my_screen.canvheight)
# my_screen.exitonclick()
from prettytable import PrettyTable


table = PrettyTable()
table.add_column("Pokemon Name", ['Fennekin', 'Vivllon', 'Pidgeot',"Raichu" ])
table.add_column("Type", ["Fire", "Flying/Bug", "Flying/Normal", "Electric"])
table.align = "l"
print(table)