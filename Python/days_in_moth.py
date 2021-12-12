def is_leap(year):
    if year % 4 == 0:
        if year % 100 == 0:
            if year % 400 == 0:
                return True
            else:
                return False
        else:
            return True
    else:
        return True

def days_in_month(year, month):
    month_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    days = month_days[month-1]
    
    is_leap(year)
    if is_leap(year)== True:
        if month == 2:
            days +=1
    
    return days
    
  
year = int(input("Enter a year: "))
month = int(input("Enter a month: "))
if year <1 :
    print("Please type a valid year > 1")
if month >12 or month<1:
    print("Please type a valid month between 1 (January) and 12 (December)")
else:
    days = days_in_month(year, month)
    print(days) 
    


