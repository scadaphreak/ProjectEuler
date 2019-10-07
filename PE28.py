#! /usr/bin/python

"""
Starting with the number 1 and moving to the right in a clockwise direction a 
5 by 5 spiral is formed as follows:

    21 22 23 24 25
    20  7  8  9 10
    19  6  1  2 11
    18  5  4  3 12
    17 16 15 14 13

It can be verified that the sum of the numbers on the diagonals is 101.
What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral formed 
in the same way?

"""

odds = range(1, 1002, 2) #each element represents the length of a side for a given row
totalrows = len(odds)

def get_corner(totalrows):
    num = 1
    row = 1
    sidesize = 1
    count = 0
    listnums = [1]
    while row < totalrows:
        while count < 4:
            num += (sidesize + 1)
            count += 1
            listnums.append(num)
        count = 0
        row += 1
        sidesize += 2
    return listnums


print sum(get_corner(3))
print sum(get_corner(totalrows))
