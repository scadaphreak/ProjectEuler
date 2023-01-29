#! /usr/bin/python

import primes_functions

number = (600851475143)
primes = primes_functions.sieve_maker(number)
possible_divisors = []

for i in xrange(2, number+1):
	if primes[i] == True: 
		possible_divisors.append(i)

possible_divisors.reverse()

print (possible_divisors[0])

largest_divisor = 0
while largest_divisor == 0:
	for i in possible_divisors:
		if number % i == 0:
			largest_divisor = i
			break
print (largest_divisor)
