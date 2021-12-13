from adventure_art import *
print(adventur_logo)
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

