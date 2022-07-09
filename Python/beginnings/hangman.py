import random
import hangman_pics
import hangman_words

print(hangman_pics.logo)


chosen_word = random.choice(hangman_words.word_list)
word_length = len(chosen_word)
lives = 6

display = []
for _ in range(word_length):
    display += "_"

again = True

while again == True:
  guess = input("Guess a letter: ").lower()

for letter in range(len(chosen_word)):
    a = chosen_word[letter]
    if a == guess:
        display[letter]= a
if guess not in chosen_word:
    lives -= 1
if lives == 0:
    print(hangman_pics.stages[lives])
    print("You lost")

print(f"{' '.join(display)}")
if "_" not in display:
    again = False
    print("You win")
