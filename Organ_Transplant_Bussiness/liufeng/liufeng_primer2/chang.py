import re
import os
import sys	

#get parameters
infile=sys.argv[1]  #new.CHB_MAF.xls 

#begin  PRIMER_SEQUENCE_ID=
#end  =

def changed(infile):
	#with open(infile) as fh:
	with open(infile) as fh:
	
		for j in fh.readlines():
		#stat=j.split()	
#			inarray.append(j)
	

			if '>' in j:	
				i=1
				i=str(i)
				try:	
					line=next(fh)
					print line
				except StopIteration:
					break
			else :
				continue
				
			i=os.mknod(i)
			i=open(i,'w')	
			i.write(j)
			i+=1
		

changed(infile)

