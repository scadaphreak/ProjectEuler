#! /usr/bin/python

print sum([x for x in range(2,1000000) if sum([int(str(x)[a])**5 for a in range(len(str(x)))])  == x])
