#! /usr/bin/python

import math
"""
What is the smallest odd composite that cannot be written as the sum of a prime 
and twice a square?
"""

primes = [x for x in range(2,1000) if not any(x % i == 0 for i in range(2, int(math.sqrt(x)) + 1))]

#what is a composite number??
