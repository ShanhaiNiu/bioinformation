import re
import os
import sys	
import gzip

#
readdict={}
#infile=open("test.txt",'w')
with open ("demo.txt") as f:
#	next(f)
	for i in f.readlines():
		tar = i.split()
		tar_name=tar[1]
		tar_rs=tar[0]		
		readdict[tar_rs]=[tar_name]

def downin(vcf):
	for j in gzip.open(vcf,'r'):
		if j.startswith('#'):
			continue;
		stat=j.split()
		rs_vcf=stat[2]
		#statlength=len(stat)
		if readdict.has_key(rs_vcf):
			#value=readdict[rs_vcf]
			infile=open("text.txt",'w')
			infile.write(j)
	'''		
		for k in readdict.keys():
			values = readdict[k]
			if chr_vcf==values:
				if k==rs_vcf:
					tar_list=(tar_name,tar_rs,stat[3],stat[4])
					while(n<statlength):
						tar_list.append(stat[n])
						n+=1
				print tar_list
			else:
				continue
				
	'''			
vcf=sys.argv[1]
downin(vcf)
vcf.close
value.close	