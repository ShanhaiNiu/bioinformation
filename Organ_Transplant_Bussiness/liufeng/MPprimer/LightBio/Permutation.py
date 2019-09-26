#!/usr/bin/env python
# -*- coding: utf-8 -*- #   
'''Permutation and Combination'''

Author = 'Wubin Qu <quwubin@gmail.com>, BIRM, China'
Date = ''
License = 'GPL v3'
Version = '1.0'

import sys, re, os

def comb(items, n=None):
    if n is None:
        n = len(items)
    for i in range(len(items)):
        v = items[i:i+1]
        if n == 1:
            yield v
        else:
            rest = items[i+1:]
            for c in comb(rest, n-1):
                yield v + c

def perm(items, n=None):
    if n is None:
        n = len(items)
    for i in range(len(items)):
        v = items[i:i+1]
        if n == 1:
            yield v
        else:
            rest = items[:i] + items[i+1:]
            for p in perm(rest, n-1):
                yield v + p
				
def main ():
    '''Main'''
    items = [1, 1, 2, 1]
    #items = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    perm(items)
    for a in perm(items):
        print a


if __name__ == '__main__':
    main()

