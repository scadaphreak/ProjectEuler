#! /usr/bin/python


stringnum = ''
num = 1
while len(stringnum) < 1000001:
    stringnum += str(num)
    num += 1

print int(stringnum[0]) * int(stringnum[9]) * int(stringnum[99]) * int(stringnum[999]) \
    * int(stringnum[9999]) * int(stringnum[99999]) * int(stringnum[999999])
