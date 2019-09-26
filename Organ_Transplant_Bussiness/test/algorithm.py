import re
import os

a=[2,3,8,7,6,5,3,2,23,12,11]


#插入排序，后插
def test(arr):
	for i in range(1,len(arr)):
		key = arr[i]
		j = i-1
		while j>=0 and arr[j]>key:
			arr[j+1] = arr[j]
			j-=1
		arr[j+1] = key
	print(arr)

#插入排序，前插
def test2(arr):

	for i in range(len(arr)-2,-1,-1):
		key = arr[i]
		j = i+1
		while j<=(len(arr)-1) and arr[j]<key:
			arr[j-1]=arr[j]
			j+=1
		a[j-1] = key
	print(arr)

#test2(a)

#冒泡排序算法
def bubbleSort(arr):
	for j in range(1,len(arr)):
		for i in range(0,len(arr)-1):
			if arr[i]>arr[i+1]:
				tem = arr[i]
				arr[i] = arr[i+1]
				arr[i+1] = tem
	print(arr)

#下沉排序算法
def sinkSort(arr):
	for j in range(1,len(arr)):
		for i in range(len(arr)-1,0,-1):
			if arr[i]<arr[i-1]:
				tmp = arr[i-1]
				arr[i-1] = arr[i]
				arr[i] = tmp
	print(arr)

#分治法

def merge(arr,p,q,n):
	nL = q-p+1
	nR = n-q
	

	print(arr,p,q,n,nL,nR)
	L = []
	R = []
	for l in range(nL):
		print(p+l)
		L[l] = arr[p+l]
	for r in range(nR):
		R[r] = arr(q+r)
	print(L,R)

	i = 1
	j = 1
	L.append(100000)
	R.append(100000)
	for k in range(n-p+1):
		if L[i]>R[j]:
			arr[k] = R[j]
			j+=1
		else:
			arr[k] = L[i]
			i+=1
	print(arr)

def divide(arr,p,n):
	if p<n:

		q = int((n+p)/2)
		divide(arr,p,q)
		divide(arr,q+1,n)
		merge(arr,p,q,n)

divide(a,1,len(a))

print(len(a))




