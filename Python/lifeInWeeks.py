age = input("What is your current age?")
endLife = 90
yearsToLive = endLife - int(age)
monthsToLive = int(yearsToLive*12)
weeksToLive = round(monthsToLive*(52/12))
daysToLive = round(weeksToLive*(365/52))

print (f" You have {daysToLive} days, {weeksToLive} weeks, and {monthsToLive} months left.")