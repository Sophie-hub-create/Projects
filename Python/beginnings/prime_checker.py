
def prime_checker(number):
    prime = True
    list_divsion = [1,2,3,4,5,6,7,8,9,10]
    for i in range (1,11):
        if i == number:
            list_divsion.remove(i)
    for j in range(2,11):
        if number % j == 0:
            prime = False 
    if prime == True:
        print("It's a prime number.")
    else: 
        print("It's not a prime number.")
       

n = int(input("Check this number: "))
prime_checker(number=n)
