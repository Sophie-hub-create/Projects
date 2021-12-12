logo = """
 _____________________
|  _________________  |
| | Pythonista   0. | |  .----------------.  .----------------.  .----------------.  .----------------. 
| |_________________| | | .--------------. || .--------------. || .--------------. || .--------------. |
|  ___ ___ ___   ___  | | |     ______   | || |      __      | || |   _____      | || |     ______   | |
| | 7 | 8 | 9 | | + | | | |   .' ___  |  | || |     /  \     | || |  |_   _|     | || |   .' ___  |  | |
| |___|___|___| |___| | | |  / .'   \_|  | || |    / /\ \    | || |    | |       | || |  / .'   \_|  | |
| | 4 | 5 | 6 | | - | | | |  | |         | || |   / ____ \   | || |    | |   _   | || |  | |         | |
| |___|___|___| |___| | | |  \ `.___.'\  | || | _/ /    \ \_ | || |   _| |__/ |  | || |  \ `.___.'\  | |
| | 1 | 2 | 3 | | x | | | |   `._____.'  | || ||____|  |____|| || |  |________|  | || |   `._____.'  | |
| |___|___|___| |___| | | |              | || |              | || |              | || |              | |
| | . | 0 | = | | / | | | '--------------' || '--------------' || '--------------' || '--------------' |
| |___|___|___| |___| |  '----------------'  '----------------'  '----------------'  '----------------' 
|_____________________|
"""
print(logo)
print("Welcome to the Calculator\n")

def add(number1, number2):
    return number1+number2

def sub (number1, number2):
    if number1>number2:
        result = number1-number2
    else:
        print("We only calculate > 0")
    return result

def multi(number1, number2):
    return number1*number2

def div(number1, number2):
    if number2 != 0:
        result = number1/number2
    else:
        print("You cannot divide through 0. ")
    return result

operations ={
"+" : add,
"-": sub,
"*": multi,
"/": div
}
number1 = int(input("Which number do you want to calculate first?  \n"))
number2 = int(input("Which number do you want to calculate then?  \n"))

for symbol in operations:
        print(symbol)
decision = input(f"Which operation would you like to calculate the numbers {number1} and {number2}? Type in '+', '-', '*' or '/' \n")
calculating = operations [decision]
output = calculating (number1, number2)

print(f"{number1} {decision} {number2} = {output}")