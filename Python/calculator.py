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

def calculating_numbers(number1, number2):
    if operation == 'addition':
        result = number1+number2
    elif operation == 'subtraction':
        result = number1 - number2
    elif operation == 'division':
        if number2 != 0:
            result = number1 / number2
        else:
            print("Error: You cannot divide through 0")

    elif operation == 'multiplication':
        result = number1*number2
    return result
   
again = True
while again == True:
    operation = input("\nWhat do you want to do?\n Type 'addition', 'subtraction', 'division' or 'multiplication' \n")
    number1 = int(input("Which number do you want to calculate first?  \n"))
    number2 = int(input("Which number do you want to calculate then?  \n"))

    agree = input(f"Is this right? you want {number1} in {operation} with {number2}? Type 'yes' or 'no'  \n")
    if agree == 'yes':
        
        print(calculating_numbers(number1, number2))
        again_answer = input("Do you want to calculate something else? Type 'yes' or 'no'  \n")
        if again_answer == 'no':
            again == False
            break
    elif agree == 'no':
        print("\nUps, try again and push the run button\n")
        break
        
            
   
   