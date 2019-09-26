import os
import re
import sys

ddcfDNA=sys.argv[1]

with open(ddcfDNA) as fh:
	for i in fh.readlines():
		if i.startswith('sample'):
			continue
		stat=i.split()
		samplename=stat[0]
		ddcfDNA_percent=stat[5]
		print samplename+'\t'+ddcfDNA_percent


