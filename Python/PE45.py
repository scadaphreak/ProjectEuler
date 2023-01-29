#! /usr/bin/python

triangular = {int(.5*x*(x+1)) for x in range(1, 100000)}
pentagonal = {int(.5*x*(3*x-1)) for x in range(1, 100000)}
hexagonal = {int(x*(2*x-1)) for x in range(1, 100000)}

trifectas = triangular.intersection(pentagonal, hexagonal)
for i in trifectas:
    print i

