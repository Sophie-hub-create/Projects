from menu import Menu, MenuItem
from coffee_maker import CoffeeMaker
from money_machine import MoneyMachine

money_machine = MoneyMachine()
coffee_maker = CoffeeMaker()
menu = Menu()
#menu_item = MenuItem()
again = True
while again:
    a = menu.get_items()
    user = input(f"What would you like ? {a}:\n")
    if user == 'report':
        coffee_maker.report()
        money_machine.report()
    elif user == 'off':
        again = False
    else:
        drink = menu.find_drink(user)
        if coffee_maker.is_resource_sufficient(drink):
            
            money_machine.make_payment(drink.cost)
            coffee_maker.make_coffee(drink)
        else: 
            fillUp = input("Not enough ressources, do you want to fill them up? 'y' or 'n'\n")
            if fillUp == 'y':
                coffee_maker.refill()
            
            
            
        