'''
a) 用python编写程序，读取附件文件：test.sam.xls
b) 识别数据中冗余项（ID，Start，End 一样的数据行定义为冗余项），同时对冗余项中Seq序列进行合并，合并规则如下：
CCCCCC    1526    1794    ATACGGACCGATTAC
CCCCCC    1526    1794    ATACGGACCGATTAC
CCCCCC    1526    1794    ATACGGTCCGATTAC
去冗余，合并之后格式如下：
CCCCCC    1526    1794    ATACGGACCGATTAC
输出合并之后的结果到文件 non-redundancy.xls
c) 统计每一种ID出现的次数，输出结果到文件： ID.record.txt
输出格式：
ID    次数
CCCCCC    3
CCTAAA    5
GGACCC    2
CCCTAG    3
'''

freqc={}#count tag freqence
readdic = {}
fh = open("test.sam.xls")
for i in fh.readline():
	tmp = split(i,'\t')
	
	#freqence count
	if freqc[tmp[0]]:
		freqc[tmp[0]] = freqc[tmp[0] + 1
	else:
		freqc[tmp[0]] = 1
		
	#remove duplicates
	##judge whether it is a duplicates
	newk = tmp[0]+":"+tmp[1]+":"+tmp[2]
	if readdict[newk]:
		readdict[newk] = [readdict[newk],tmp[3]]
	else:
		readdict[newk] = [tmp[3]]

outfh = open("non-redudant.xls",'w')
##merge a concensus
for k in readdict.keys():
	values = readdict[k]
	#only one record 
	if length(values) == 1:
	#wrter file
		outfh.write(k+"\t"+values[0])
	else：#more than one records
		len = length(values[0])
		newread = ''
		for l in len:
			chardict = {}
			for v in values:
				chars = split(v,'')
				if chardict[chars[l]]:
					chardict[chars[l]] = chardict[chars[l]]+1
				else:
					chardict[chars[l]] = 1
			#max frequence
			max = 0
			maxchar = ''
			for char in chardict.keys():
				if chardict[char] > max:
					maxchar = char
			newread = newread + maxchar
			print k+"\t"+newread
			
			

