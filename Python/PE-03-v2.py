#! /usr/bin/python

##What is the largest prime factor of the number 600851475143?

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

n = 600851475143
divisor = n - (n/2)
count = 2
found_it = False

while found_it == False and divisor > 1:
    if n % divisor == 0 and is_prime(divisor) == True:
        found_it = True
        print "%d is the largest prime factor of %d." % (divisor, n)
    else:
        print "%d is not a prime factor of %d" % (divisor, n)

        



