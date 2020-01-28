#! /usr/bin/env python
import sys

def powI(pow, base):
	acc = 1
	for p in range(p):
		acc = acc * base
	return acc

def powF(pow, base, current)
	return powF(pow-1, base, current*base) if pow>1 else return current

if len(sys.argv) != 2:
	print("%s usage: [NUMBER]" % sys.argv[0])
	exit()

print(fact(int(sys.argv[1])))
