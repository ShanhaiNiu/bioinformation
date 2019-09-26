
import os
import re

class Solution:
	def master(a,b):
		if a>b :
			larger = a
		else:
			larger = b

		while True:
			if larger%a == 0 and larger%b == 0:
				master = larger
				break
			larger += 1
		print(master)
	a = int(input("one number"))
	b = int(input("two number"))
	master(a,b)
