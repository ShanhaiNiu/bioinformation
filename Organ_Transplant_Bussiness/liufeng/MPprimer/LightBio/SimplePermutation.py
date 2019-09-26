#!/usr/bin/env python
# -*- coding: utf-8 -*- #   
''''''

Author = 'Wubin Qu <quwubin@gmail.com>, BIRM, China'
Date = ''
License = 'GPL v3'
Version = '1.0'

import sys, re, os

def permutate(seq):
    """permutate a sequence and return a list of the permutations"""
    if not seq:
        return [seq]  # is an empty sequence
    else:
        temp = []
        for k in range(len(seq)):
            part = seq[:k] + seq[k+1:]
            #print k, part  # test
            for m in permutate(part):
                temp.append(seq[k:k+1] + m)
                #print m, seq[k:k+1], temp  # test
        return temp

def main ():
    '''Main'''
    items = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    a = permutate(items)
    for b in a:
        print b


if __name__ == '__main__':
    main()

