#! /usr/bin/python

"""
The decimal number, 585 = 1001001001 (binary), is palindromic in both bases.
Find the sum of all numbers, less than one million, which are palindromic in base 10 and base 2.
(Please note that the palindromic number, in either base, may not include leading zeros.)
"""

def is_pal(x):
    #recursive
    return len(str(x)) < 2 or str(x)[0] == str(x)[-1] and is_pal(str(x)[1:-1])

def get_bin(x):
    #not really needed...could just put into comprehension
    return bin(x)[2:]

def main():
    palindromics = [x for x in range(1, 1000000) if is_pal(x) and is_pal(get_bin(x))]
    print sum(palindromics)

if __name__ == '__main__':
    main()
