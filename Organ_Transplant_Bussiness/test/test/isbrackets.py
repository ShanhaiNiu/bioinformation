import os
import re

class Solution:
	def isValid(s):
		while '{}' in s or '()' in s or '[]' in s:
			s = s.replace('{}','')
			s = s.replace('[]','')
			s = s.replace('()','')
		print(s == '')

		return s == ''
	isValid('[]]')
