#! /usr/bin/python

import math

"""
Find the first four consecutive integers to have four distinct prime factors. 
What is the first of these numbers
"""

def primes(x):
    return [n for n in range(2, x+1) if not any(n % i == 0 for i in \
            range(2, int(math.sqrt(n)) + 1))]

def primefactors(x):
    return set(n for n in primes(x/2 + 1) if x % n == 0)

def main():
    numdict =  {x:primefactors(x) for x in range(1000,10000) if len(primefactors(x)) == 4}
    print numdict

    uniq = []
    for i in numdict.keys():
        for j in numdict.keys():
            if numdict[i].intersection(numdict[j]) == set():
                if i not in uniq:
                    uniq.append(i)
                if j not in uniq:
                    uniq.append(j)

    uniq.sort()
    print uniq
    index = 0
    while index < len(uniq) - 1:
        if uniq[index] + 1 == uniq[index+1] and uniq[index+1] + 1 == uniq[index+2]:
            print uniq[index], uniq[index+1], uniq[index+2]
            quit()
        else:
            index += 1


if __name__ == '__main__':
    main()


#works for 3 digit numbers but not finding consecutive primes for 4 digits
