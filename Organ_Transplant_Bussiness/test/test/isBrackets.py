import re
import os

class Slotion:
	def isValid(s):
		stack = []
		mapping = {')':'(',']':'[','}':'{'}
		for char in s:
			if char in mapping:
				top_element = stack.pop() if stack else '.'
		
				if top_element != char:
					result = 'false'
			
			else:
				stack.append(char)

		result = not stack
		print(result)

	isValid('[][][]{}{{}')

