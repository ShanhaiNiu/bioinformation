import re
import os
import sys	
import string 

#get parameters
infile=sys.argv[1]

#function

def get_probe(infile):
	a=1
	with open (infile) as f:
		for i in f.readlines():
			
			length=len(i)-2
			quality =''
			for q in range(length):
			
				quality+='J'			

			print ("@"+str(a))
			print(i)
			print("+")
			print(quality)
			a+=1
		
get_probe(infile)
	


