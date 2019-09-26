import re
import os
import sys	
import gzip

#get parameters
vcf=sys.argv[1]
rsfile=sys.argv[2]
outfile=sys.argv[3]

#initial
readdict={}


#function
def loadRSID(infile):
	with open (infile) as f:
		for i in f.readlines():
			tar = i.split()
			tar_name=tar[1]
			tar_rs=tar[0]		
			readdict[tar_rs]=[tar_name]
	print ("loaded "+infile)

def downin(infile):
	with gzip.open(infile,'r') as fh:
		for j in fh:
			if j.startswith('#'):
				continue;
			stat=j.split()
			rs_vcf=stat[2]
			if readdict.has_key(rs_vcf):
				outFH.write(j)
	

outFH=open(outfile,'w')
loadRSID(rsfile)
downin(vcf)
outFH.close	
