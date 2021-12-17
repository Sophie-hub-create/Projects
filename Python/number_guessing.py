#Number Guessing Game Objectives:

# Include an ASCII art logo.
# Allow the player to submit a guess for a number between 1 and 100.
# Check user's guess against actual answer. Print "Too high." or "Too low." depending on the user's answer. 
# If they got the answer correct, show the actual answer to the player.
# Track the number of turns remaining.
# If they run out of turns, provide feedback to the player. 
# Include two different difficulty levels (e.g., 10 guesses in easy mode, only 5 guesses in hard mode).
import random

from number_guessingArt import number_logo
print(number_logo)

secretNumber= random.randint(1, 100)

guessed = False
begin = 0
counter = 0

mode = input("Which level do you want to have? Easy or Hard? Type 'e' or 'h'\n")
if mode == 'h':
    maximum = 5
else:
    maximum = 10


while guessed == False or counter <= maximum:
    counter += 1
    begin = int(input("Guess a number between 1 and 100\n"))
    if begin == secretNumber:
        print(f"Thats right, YOU WON after {counter} tries")
        guessed = True
    else:
        
        if begin < secretNumber:
            print("Too low. Try again ")
        else:
            print("Too High. Try again")   
    
        if counter == maximum:
            print(f"YOU LOST, you didnt guess the number in {maximum} tries\n")
            break
        else:
            tries = maximum - counter
            print(f"You guessed {counter}x , you have got another {tries} chances to win\n")

        
