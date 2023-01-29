#! /usr/bin/python

##By considering the terms in the Fibonacci sequence whose values do not
##exceed four million, find the sum of the even-valued terms.

def fibonacci(maximum):
    '''
    (int) --> list of ints
    Generate a list of Fibonacci values up to a given maximum value
    >>>fibonacci(20)
    1,2,3,5,8,13
    '''
    
    fib_list = [1,2]
    while fib_list[-1] < maximum:
        fib_list.append(fib_list[-2] + fib_list[-1])
        
    return fib_list
    
    
sequence_range = int(raw_input("Enter the value up to which you would like to generate the Fibonacci Sequence -->  "))

sequence = fibonacci(sequence_range)
even_sequence = []

for i in sequence:
    if i % 2 == 0:
        even_sequence.append(i)

print "Here is the sum of all of the even numbers in your sequence --> \n %d" % sum(even_sequence)
