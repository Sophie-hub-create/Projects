MENU = {
    "espresso": {
        "ingredients": {
            "water": 50,
            "coffee": 18,
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

decisionRessources = []
ingredients = MENU['latte']["ingredients"]
cost = MENU['latte']["cost"]
dataWater -= ingredients.get('water')
dataCoffee -= ingredients.get('coffee')
dataMilk -= ingredients.get('milk')
decisionRessources.extend([dataWater, dataMilk, dataCoffee])
print(decisionRessources)