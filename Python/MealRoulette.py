
import random
test_seed = int(input("Create a seed number: "))
random.seed(test_seed)

names_string = input("Give me everybody's names, separated by a comma. ")
names = names_string.split(", ")

länge = len(names) -1
random_pick = random.randint (0, länge)
print(f"{names[random_pick]} is going to buy the meal today!")