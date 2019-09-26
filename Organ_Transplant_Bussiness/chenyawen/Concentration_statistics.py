import numpy as np
#import pylab as pl
import random
 
 

import matplotlib
import matplotlib.pyplot as pl

 
 
 
# Use numpy to load the data contained in the file

x = range(54)
random.shuffle(x)
data=np.loadtxt('Concentration.txt')

 
# plot the first column as x, and second column as y
pl.plot(x, data[:,0], 's')
pl.xlabel('Sample')
pl.ylabel('Concentration')
pl.xlim(0.0, 60)
pl.ylim(0.0,0.5)
pl.show()