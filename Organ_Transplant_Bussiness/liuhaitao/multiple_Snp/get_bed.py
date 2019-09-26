import re
import os
import sys

infile = sys.argv[1]

def get_bed(infile):
	with open(infile) as fh:
		
		for i in fh.readlines():
			rsInfo = i.split()
			geneLen = len(rsInfo)
			geneArr = []
			for key in range(geneLen-1):
				if "=" in rsInfo:
					geneInfo = rsInfo.split('=')
					geneArr.append(geneInfo[0])
			
			geneArr.append(rsInfo[geneLen-1].split('=')[0])
			geneArr.append(rsInfo[geneLen-1].split('=')[1])

			print (rsInfo[0]+'\t'+rsInfo[1]+'\t'+rsInfo[1]+'\t'+rsInfo[3]+'\t'+
			rsInfo[4]+'\t'+'SNP'+'\t'+geneArr)
get_bed(infile)


