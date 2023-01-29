#! /usr/bin/python

##What is the largest prime factor of the number 600851475143?

###############################################################################
def factor_finder(number):
    '''
    (int) --> list of ints
    Returns a list of all factors of a given number.
    >>>factor_finder(20)
    1,2,4,5,10
    '''
    
    factor_list = []
    
    for i in range(1, number):
        if number % i == 0:
            factor_list.append(i)
    
    return factor_list
###############################################################################
    
###############################################################################
def is_prime(number):
    '''
    (int) --> bool
    Returns True if a number is prime and False if not.
    >>>is_prime(17)
    True
    '''
    
    prime = True
    divisor = 2
    while divisor < number and prime == True:
        if number % divisor == 0:
            prime = False
        else:
            divisor += 1
    
    return prime
###############################################################################

##Promt for input and create factor list
x = int(raw_input("Enter the number that you would like to factor --> "))
factor_list = factor_finder(x)

print "Here are the factors of %d \n" % x
print factor_list, "\n\n"

###Create a list of prime numbers from the original list of factors

prime_list = [1,2]

for i in factor_list:
    if is_prime(i) == True:
        prime_list.append(i)

print "The largest prime factor of %d is %d\n\n" %(x, prime_list[-1])

###only works for numbers less than 999999999 because the range function 
###creates a list and gets too big for memory


