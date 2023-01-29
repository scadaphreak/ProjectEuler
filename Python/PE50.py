#! /usr/bin/python

import math

"""
41 = 2 + 3 + 5 + 7 + 11 + 13
This is the longest sum of consecutive primes that adds to a prime below one-hundred.

Which prime below one-million, can be written as the sum of the most consecutive
primes?
"""

def primes(x):
    return [n for n in range(2, x+1) if not any(n % i == 0 for i in \
            range(2, int(math.sqrt(n)) + 1))]


def main():
    print primes(100)

if __name__ == '__main__':
    main()
