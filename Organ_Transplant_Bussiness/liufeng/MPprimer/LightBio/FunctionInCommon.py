#!/usr/bin/env python
# -*- coding:utf-8 -*-

#-----------------------------------------------------
# File: function.py
# Date: 2008-09-01
# Description: Collect some useful function here
#-----------------------------------------------------

__version__ = '1.0'
__author__  = 'Wubin Qu <quwubin@gmail.com> @ZCGLAB @BMI @CHINA'


def create_sorted_by_primerID_sn_array(p, k):
    '''
    Sorted by the primer's ID produced by Primer3 program.
    As the penalty shows, the smaller the ID, the better quality of the primer.
    Advanced greedy algorithm, also as graph expanding algorithm for MPprimer.
    By Wubin Qu <quwubin@gmail.com>, 2009-10-22.
    '''
    from operator import itemgetter
    return_array = []
    length = p**k
    array_of_sn_array = [[0 for col in range(k)] for row in range(length)]
    num = 0
    for j in range(k):
	for i in range(0, length, p**j):
	    if num == p:
	        num = 0

	    if p**j == 1:
		array_of_sn_array[i][j] = num
	    else:
		array_of_sn_array[i][j] = num
		for m in range(i, i + p**j):
		    array_of_sn_array[m][j] = num

	    num = num + 1

    array4sort = []

    num = 0
    for array in array_of_sn_array:
	sum_value = 0
	for item in array:
	    sum_value = sum_value + item * 10 ** (item - 1)
	array4sort.append([num, sum_value])
	num = num + 1

    sorted_array = sorted(array4sort, key=itemgetter(1))

    for array in sorted_array:
	return_array.append(array_of_sn_array[array[0]])

    return return_array

def create_unsort_sn_array_old(p, k):
    '''
    Unsort!
    By Wubin Qu <quwubin@gmail.com>, 2009-10-22.
    '''
    length = p**k
    array_of_sn_array = [[0 for col in xrange(k)] for row in xrange(length)]
    num = 0
    for j in xrange(k):
	for i in xrange(0, length, p**j):
	    if num == p:
	        num = 0

	    if p**j == 1:
		array_of_sn_array[i][j] = num
	    else:
		array_of_sn_array[i][j] = num
		for m in xrange(i, i + p**j):
		    array_of_sn_array[m][j] = num

	    num = num + 1

    return array_of_sn_array

array_out = []

def write(rec, N, array):
    '''Output'''
    out = []
    for i in range(N):
        out.append(array[rec[i]])

    array_out.append(out)

def arrange(rec, used, depth, N, array):
    '''Arrange'''
    if depth >= N:
        write(rec, N, array)
    else:
        found_num = sys.maxint
        for i in range(N):
            if used[i] == 0 and array[i] < found_num:
                rec[depth] = i
                found_num = array[i]
                used[i] = 1
                arrange(rec, used, depth+1, N, array)
                used[i] = 0

def create_sn_array(pre_array, p):
    '''
    Iteraly
    By Wubin Qu <quwubin@gmail.com>, 2009-10-22.
    '''
    import random
    # p represents the p-multiple PCR.

    # Position changed


    # Number changed
    pre_array[pre_array.index(min(pre_array))] = pre_array[pre_array.index(min(pre_array))] + 1

    N = len(pre_array)
    rec = [0 for col in range(N+1)]
    used = [0 for col in range(N+1)]
    depth = 0
    arrange(rec, used, depth, N, pre_array)

    return array_out

def random_string(length):
    import string
    import random
    rstr = ''.join(random.choice(string.letters) for i in xrange(length))
    return rstr

def get_size_range(size):
    Y = cal_mobility(size)
    # Set 2 mm as the distance which the bands can be \
            #seperated by naked eyes
    Xmin = cal_size(Y+2)
    Xmax = cal_size(Y-2)

    return Xmin, Xmax

def cal_mobility(X, length=50):
    import math

    X = float(X)
    # X: size (bp)
    # length: the mobility distance of the fastest DNA segment
    Y = math.exp(4.606033 - 0.7245908 * math.log(X + 474.6539))
    # Y: the relative mobility = mobility distance / length
    Y = Y * length
    # Y: the mobility distance
    return Y

def cal_size(X, length=50):
    import math

    X = float(X)
    # X: the mobility distance
    # length: the mobility distance of the fastest DNA segment
    X = X / length
    # here, X was been convert to the relative mobility = mobility distance / length
    Y = math.exp(6.353971 - 1.384176 * math.log(X)) - 474.6539
    # Y: size (bp)
    return Y

def codec_read_file(file_name, codec_char = 'utf-8'):
    import codecs

    fh = codecs.open(file_name, encoding=codec_char)
    file_content = fh.read()
    fh.close()
    return file_content


def read_from_file(file_name):
    fh = open(file_name)
    file_content = fh.read()
    fh.close()
    return file_content

def write_to_file(file_name, file_content, model):
    fh = open(file_name, model)
    fh.write(file_content)
    fh.close()

def connect_mysql(host, user, passwd, dbname):
    ''' Connect to the MySQL database '''
    import MySQLdb
    db = MySQLdb.Connection(host, user, passwd, dbname)
    cur = db.cursor()

    return cur, db

def debug(s):
    fh = open('debug.tmp', 'a')
    fh.write(str(s))
    fh.write('\n')
    fh.close()

def close_mysql(cur, db):
    ''' Close the database '''
    cur.close()
    db.close()

def parse_csv(filename, delimiter_char=','):
    import csv

    csvfile = open(filename)
    reader = csv.reader(csvfile, delimiter=delimiter_char)
    has_header = True
    dicts = []
    for fields in reader:
        if has_header:
            header = fields
            has_header = False
        else:
            dicts.append({})
            for i, f in enumerate(fields):
                dicts[-1][header[i]] = f
    return dicts

def set_cache(content, path, file_name):
    import os
    import shelve

    full_path = path + os.sep + file_name
    d = shelve.open(full_path)
    d[file_name] = content
    d.close()

def get_cache(path, file_name):
    import os
    import shelve

    full_path = os.path.join(path, file_name)
    d = shelve.open(full_path)
    content = d[file_name]
    d.close()

    return content

def main():
    pre_array = [1, 2, 3, 2, 1]
    array = create_sn_array(pre_array, 5)
    print array

if __name__ == '__main__':
    main()
