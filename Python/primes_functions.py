#! /usr/bin/python

###############################################################################
def primes_list_gen(num):
	'''(int) -> list of int
	
	Returns a list of primes that are less than or equal to a given value.
	Works well for small ranges.


	>>>primes_sieve(10)
	[1,2,3,5,7]

	>>>primes_sieve(20)
	[1,2,3,5,7,11,13,17]
	'''

	import math
	L = range(num+1)
	L.remove(0)
	L.remove(1)

	for i in L:
		div = i*2	
		while div <= num and i <= math.sqrt(num):
			print i, div		
			if div in L:
				L.remove(div)
				div += i
			else:
				div += i
	
	return L
###############################################################################
###############################################################################
def sieve_maker(num):
	'''(int) -> list of bool

	Returns a list of boolians where True indicates that the number of that 
	index is a prime number.

	>>>sieve_maker(10) 
	['True', 'True', 'True', 'False', 'True', 'False', 'True', 'False', 
	'False', 'False']
	'''
	import math
	sieve = [True] * (num + 1)

	for x in xrange(2, (int(math.sqrt(num))) + 1):
		if sieve[x]:
			for i in xrange(x+x, num + 1, x):
				sieve[i] = False
	sieve[0] = None
	#this sets the value 0 as None so that it is not included as a prime 
	#number

	#print sum(i for i in xrange(2, num) if sieve[i])
	return sieve
###############################################################################
###############################################################################



###############################################################################
###############################################################################

if __name__ == '__main__':
	n = int(raw_input('Enter a number for the range:  '))
	print(sieve_maker(n))


