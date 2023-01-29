#! /usr/bin/python


#lastten = 0
#for i in range(1,1000):
#    lastten += int(str(i**i)[-10:])
#print str(lastten)

print str(sum([x**x for x in range(1,1001)]))[-10:]
