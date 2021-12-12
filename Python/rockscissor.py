rock = '''
    _______
---'   ____)
      (_____)
      (_____)
      (____)
---.__(___)
'''

paper = '''
    _______
---'   ____)____
          ______)
          _______)
         _______)
---.__________)
'''

scissors = '''
    _______
---'   ____)____
          ______)
       __________)
      (____)
---.__(___)
'''


user1= input("Player 1- Choose rock,scissor or rock? What do you choose? Type 0 for Rock, 1 for Paper or 2 for Scissors.")
user2 = input("Player 2 - Choose rock,scissor or rock? What do you choose? Type 0 for Rock, 1 for Paper or 2 for Scissors.")


if user1 =="1" and user2 =="2":
  print(f" The Winner is PLAYER 2 \n {scissors}")
elif user1 =="2" and user2 =="1":
  print(f" The Winner is PLAYER 1 \n {scissors}")
elif user1 =="0" and user2 =="2":
  print(f" The Winner is PLAYER 1 \n {rock}")
elif user1 =="2" and user2 =="1":
  print(f" The Winner is PLAYER 1 \n {rock}")
elif user1 =="1" and user2 =="0":
  print(f" The Winner is PLAYER 1 \n {paper}")
elif user1 =="0" and user2 =="1":
  print(f" The Winner is PLAYER 2 \n {paper}")
elif user1=="1" and user2 =="1":
  print("Once again, no winner")
elif user1=="0" and user2 =="0":
  print("Once again, no winner")
elif user1 =="2" and user2 =="0":
  print(f" The Winner is PLAYER 2 \n {rock}")
else:
  print("Once again, no winner")
