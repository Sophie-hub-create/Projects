MENU = {
    "espresso": {
        "ingredients": {
            "water": 50,
            "coffee": 18,
            "milk":0
        },
        "cost": 1.5,
    },
    "latte": {
        "ingredients": {
            "water": 200,
            "milk": 150,
            "coffee": 24,
        },
        "cost": 2.5,
    },
    "cappuccino": {
        "ingredients": {
            "water": 250,
            "milk": 100,
            "coffee": 24,
        },
        "cost": 3.0,
    }
}

resources = {
    "water": 300,
    "milk": 200,
    "coffee": 100,
}

dataWater = resources["water"]
dataMilk = resources["milk"]
dataCoffee = resources["coffee"]
money = 0.0
cost = 0.0   
paid = 0
    
def report():
    print(f"Water: {dataWater}ml")
    print(f"Milk: {dataMilk}ml")
    print(f"Coffee: {dataCoffee}g")
    print(f"Money: ${money}")

def paying():
    paid = 0
    paid+= int(input("how many quarters do you want to pay (0.25)?"))
    paid+= int(input("how many dimes do you want to pay (0.10)?"))
    paid += int(input("how many nickles do you want to pay (0.05)?"))
    paid+= int(input("how many pennies do you want to pay (0.01)?")) 
    return paid

x = ['espresso', 'latte', 'cappuccino']   
          
lowMoney = True  
again = True
while again:
    decision = input("What would you like? (espresso/latte/cappuccino):")
    if decision == 'off':
        again= False
    elif decision == 'report':
        report()
    elif decision in x:
        ingredients = MENU[decision]["ingredients"]
        cost = MENU[decision]["cost"]
        dataWater -= ingredients.get('water')
        dataCoffee -= ingredients.get('coffee')
        dataMilk -= ingredients.get('milk')
        if dataWater <= 0:
            print("Sorry, there's not enough water.")
        if dataMilk <= 0:
            print("Sorry, there's not enough milk.")       
        if dataCoffee <= 0:
            print("Sorry, there's not enough coffee.")
        else:
            resources.update({'water': dataWater, 'milk': dataMilk, 'coffee': dataCoffee})
        print(f"Please, pay ${cost}")
        while lowMoney:
            paid += paying()   
            if paid < cost:
                print("Sorry, thats not enough money: Money refunded.")    
                paid = 0          
            elif paid >= cost:
                solved =round( paid - cost, 3)
                print(f"Yout get ${solved} back." )
                lowMoney= False
                money += cost
    