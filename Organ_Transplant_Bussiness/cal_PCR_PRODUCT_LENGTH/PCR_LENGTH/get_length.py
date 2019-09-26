import re
import os
#from collections import Counter

dict_F={}
dict_R={}
get_length={}


with open("newtmp") as fh:
	for i in fh.readlines():
		nu = i.split()
		if 'F' in nu[0]:
			nuf=filter(str.isdigit, nu[0])+'\t'+nu[1]
			nufv=int(nu[3])
			dict_F[nuf]=nufv
			
		elif 'R' in nu[0]:
			nur=filter(str.isdigit, nu[0])+'\t'+nu[1]
			nurv=int(nu[2])
			dict_R[nur]=nurv
	
		else:
			continue	
	#dict(Counter(dict_R)-Counter(dict_F))
	
	for f in dict_F.keys():
		if dict_R.has_key(f):
				getn=abs(dict_R[f]-dict_F[f])
				get_length[f]=str(getn)
				dictf=str(dict_F[f])
				dictr=str(dict_R[f])
				print f+'\t'+get_length[f]+'\t'+dictf+'\t'+dictr
'''
mindistance	= 1000000
for f in dict_F.keys():
	for r in dict_R.keys():
		i=1
		r=int(r)
		f=int(f)
		gap=r-f
		if gap<mindistance:
			mindistance=gap
	min_distance[i]=[mindistance]
	i+=1	
'''	

