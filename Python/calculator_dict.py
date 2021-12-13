from calculator_art import logo

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
def calculator():
    print(logo)
    print("Welcome to the Calculator\n")

    number1 = float(input("Which number do you want to calculate first?\n"))
    for symbol in operations:
        print(symbol)
    continue_calculating = True

    while continue_calculating == True:
        decision = input(f"Which operation would you like to pick? Type in '+', '-', '*' or '/' \n")
        number2 = float(input("Which number do you want to calculate then?  \n"))
        calculating = operations [decision]
        output = calculating(number1, number2)

        print(f"{number1} {decision} {number2} = {output}")

        if input(f"Type 'yes' to continue with calculating with {output}, or type 'no' to start again a new calculation: \n") == "yes":
            number1 = output
        else:
            continue_calculating = False
            calculator()

calculator()           


