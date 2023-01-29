#! /usr/bin/python

"""
A permutation is an ordered arrangement of objects. For example, 3124 is one 
possible permutation of the digits 1, 2, 3 and 4. If all of the permutations 
are listed numerically or alphabetically, we call it lexicographic order. The 
lexicographic permutations of 0, 1 and 2 are:

    012   021   102   120   201   210

What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 
6, 7, 8 and 9?
"""

digits = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'}

permutations = [a+b+c+d+e+f+g+h+i+j for a in digits for b in digits if b != a for c in digits if c != a and c != b for d in digits if d != a and d != b and d != c for e in digits if e != a and e != b and e != c and e != d for f in digits if f != a and f != b and f != c and f != d and f != e for g in digits if g != a and g != b and g != c and g != d and g != e and g != f for h in digits if h != a and h != b and h != c and h != d and h != e and h != f and h != g for i in digits if i != a and i != b and i != c and i != d and i != e and i != f and i != g and i != h for j in digits if j != a and j != b and j != c and j != d and j != e and j != f and j != g and j != h and j != i]

lexperm = sorted(permutations)

print lexperm[999999]
