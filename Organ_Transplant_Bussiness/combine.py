import re
import os
import sys	

#get parameters
maf=sys.argv[1]  #new.CHB_MAF.xls 
getlen=sys.argv[2] #new.get_length.xls

dict_maf={}




def mafid(infile):
	with open(infile) as fh:
		for j in fh.readlines():
			stat=j.split()
			maf_nu=stat[5]+stat[6]
			dict_maf[maf_nu]=j
	
	return dict_maf

mafid(maf)

def lenid(infile):
	with open (infile) as f:
		for i in f.readlines():
			len = i.split()
			len_chr=filter(str.isdigit, len[1])
			
			len_nu1=int(len[3])
			len_nu2=int(len[4])
						
			for k in range(len_nu1,len_nu2+1):
				key=len_chr+str(k)
				
				if dict_maf.has_key(key):
				#	print dict_maf[key]
					print(len[0]+'\t'+len[1]+'\t'+len[2]+'\t'+len[3]+'\t'+len[4]+'\t'+dict_maf[key])



lenid(getlen)
