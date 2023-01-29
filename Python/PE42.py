#! /usr/bin/python

"""
The n-th term of the sequence of triangle numbers is given by, 

t(n) = 1/2n(n+1)

so the first ten triangle numbers are:

1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

By converting each letter in a word to a number corresponding to its 
alphabetical position and adding these values we form a word value. For example,
the word value for SKY is 19 + 11 + 25 = 55 = t10. If the word value is a 
triangle number then we shall call the word a triangle word.

Using words.txt (right click and 'Save Link/Target As...'), a 16K text file 
containing nearly two-thousand common English words, how many are triangle words?
"""

trinums = [int(.5*x*(x+1)) for x in range(1, 100)]

count = 0
fh = open('PE042_words.txt')

for line in fh:
    words = line.split(',')
    for word in words:
        score = sum([ord(x)-64 for x in word if ord(x) >= 65])
        if score in trinums:
            count += 1
print 'Total triangle words = %d' %count
