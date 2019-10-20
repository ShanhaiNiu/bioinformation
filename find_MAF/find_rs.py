import re
import os
import sys


#获取rs编号
def getRs():
	with 



def maffun(inf):
	with open (inf) as i:
		for j in i.readlines():
			if j.startswith('#'):
				continue

			chrom = j.split()	
			rsnumber = chrom[2]
			ref = chrom[3]
			alt = chrom[4]
			chr=str(chrom[0])
			pos=str(chrom[1])
			refn=0
			altn=0
		
			n=9
			length = len(chrom);
			#print (length);
			while(n<length):
				type=re.split('[:|]',chrom[n])
		
				if type[0]=="0":
					refn+=1
				elif type[0]=="1":
					altn+=1
				if type[1]=="0":
					refn+=1
				elif type[1]=="1":
					altn+=1;
				n+=1;
	
			allnum=refn+altn;
			if allnum==0:
				continue
			elif refn>altn:
				minor=alt
				minorfre=str(round(float(altn)/allnum,5))
			elif refn<altn:
				minor=ref
				minorfre=str(round(float(refn)/allnum,5))

			print (rsnumber+'\t'+ref+'\t'+alt+'\t'+minor+'\t'+minorfre+'\t'+chr+'\t'+pos)
	

inf=sys.argv[1]
maffun(inf)




		
