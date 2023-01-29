#! /usr/bin/python

##Find the sum of all the multiples of 3 or 5 below 1000.

def multiples(maximum):

    '''(int) --> list of ints
    Return the numbers that are multiples of 3 or 5 up to but not including
    a given number.
    >>>multiples(10)
    3,5,6,9
    '''

    mult_list = []
    for i in range(maximum):
        if i % 3 == 0 or i % 5 == 0:
            mult_list.append(i)
    return mult_list


# print multiples(10)

number_range = int(raw_input("Enter the value for the range you would like to use -->  "))

print "The sum of all of the multiples of 3 and 5 for your selected range is %d"  % sum(multiples(number_range))
