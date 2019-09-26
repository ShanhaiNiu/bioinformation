import os
import re
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

def pdfun():
	data = pd.Series([1,2,3,np.nan])
	frame = pd.DataFrame({"a":[1,2,3,4,5,1,5],"b":["one","two"]*3+["one"]})
	left = pd.DataFrame(np.arange(9).reshape((3,3)),index=['a','b','c'], columns=['color','age','name'])
	right = pd.Series(np.random.randn(3))
	print(left)
	print(left.stack())

def graph():
	graph = np.arange(10)
	plt.plot(graph)

data = pd.Series([1,2,3,4]*5)
print(data)
print(pd.value_counts(data))
data = pd.unique(data)
print(data)

