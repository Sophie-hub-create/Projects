print('''
*******************************************************************************
          |                   |                  |                     |
 _________|________________.=""_;=.______________|_____________________|_______
|                   |  ,-"_,=""     `"=.|                  |
|___________________|__"=._o`"-._        `"=.______________|___________________
          |                `"=._o`"=._      _`"=._                     |
 _________|_____________________:=._o "=._."_.-="'"=.__________________|_______
|                   |    __.--" , ; `"=._o." ,-"""-._ ".   |
|___________________|_._"  ,. .` ` `` ,  `"-._"-._   ". '__|___________________
          |           |o`"=._` , "` `; .". ,  "-._"-._; ;              |
 _________|___________| ;`-.o`"=._; ." ` '`."\` . "-._ /_______________|_______
|                   | |o;    `"-.o`"=._``  '` " ,__.--o;   |
|___________________|_| ;     (#) `-.o `"=.`_.--"_o.-; ;___|___________________
____/______/______/___|o;._    "      `".o|o_.--"    ;o;____/______/______/____
/______/______/______/_"=._o--._        ; | ;        ; ;/______/______/______/_
____/______/______/______/__"=._o--._   ;o|o;     _._;o;____/______/______/____
/______/______/______/______/____"=._o._; | ;_.--"o.--"_/______/______/______/_
____/______/______/______/______/_____"=.o|o_.--""___/______/______/______/____
/______/______/______/______/______/______/______/______/______/______/_____ /
*******************************************************************************
''')
print("Welcome to Treasure Island.")
print("Your mission is to find the treasure.") 


answer1 = input(print("You are are at a crossroad. Do you want to go right or left? L or R\n"))
if answer1 == "L":
  answer2 = input("You have come to a lake.\n There is an island in the middle of the lake.\n Type 'wait' to wait for a boat.\n Type 'swim' to swim across\n")
  if answer2 == "swim":
    print("Attacked by trout. Game over.")
  elif answer2 == "wait":
    answer3 = input("You arrive at the island unharmed.\n There is a house with 3 doors.\n One red, one yellow and one blue.\n Which colour do you choose? \nType Red,Yellow or Blue\n")
    if answer3 == "Red":
      print("Burned by fire. Game Over.")
    elif answer3 == "Blue":
      print("Eaten by beasts. Game Over.")
    elif answer3 == "Yellow":
      print("You win.")  
    else:
      print("You typed something wrong.\n Begin with the Run-Button the treasure hunt again.")
  else:
    print("You typed something wrong.\n Begin with the Run-Button the treasure hunt again.")
elif answer1 == "R":
  print("You fall into a hole. Game over.")
else:
  print("You typed something wrong. Begin with the Run-Button the treasure hunt again.")

