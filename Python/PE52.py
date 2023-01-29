#! /usr/bin/python

"""
It can be seen that the number, 125874, and its double, 251748, contain exactly 
the same digits, but in a different order.

Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x, contain 
the same digits.
"""

def digits(x):
    return {i for i in str(x)}


for i in range(1, 1000000):
    t = [a*i for a in range(2,7)]
    if digits(i) == digits(t[0]) == digits(t[1]) == digits(t[2]) ==digits(t[3]) ==\
            digits(t[4]):
        print "%d worked" %i


"""
the above code is buggy

here is a great example from PE:

n=125874
while any(sorted(str(n)) != sorted(str(i*n)) for i in range (2,7)):
    n=n+1
print(n)


Uses the any() function...really cool!!
"""
