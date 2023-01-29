#! /usr/bin/python

import math

"""
145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.
Find the sum of all numbers which are equal to the sum of the factorial of 
their digits.
Note: as 1! = 1 and 2! = 2 are not sums they are not included.
"""

def fact_sum(x):
    return sum([math.factorial(int(i)) for i in str(x)])

curiousnums = [x for x in range(3,100000) if x == fact_sum(x)]
print len(curiousnums)
