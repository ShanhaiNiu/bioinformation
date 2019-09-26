#!/usr/bin/python
# -*- coding: utf-8 -*- #   
'''A program which use file "MPprimer_input_template.txt" 
to create standard Primer3 like input file for MPprimer.
You can change the parameters values in the template file
to adjust your to need.
This program should run before MPprimer and it's recommended
use it to create input file for MPprimer.
'''

import LightBio.LightFastaParser as LFP
import LightBio.SeqCheck as LSC
import os
import sys
import re
import getopt
src_path = os.path.split(os.path.realpath(sys.argv[0]))[0]
sys.path.append(src_path)

usage = '''
Usage:

    CreateMPprimerInput.py -i your_seq_in_fasta_format -o output [Options]

    Notice: After create the input file, it's recomended to modify the parameters,
	    such as "Product size range", in the file to adjust your need.

[Options]

    -t template_file     You can specify your template file, the default tempalte 
			 file is MPprimer_input_template.txt in the MPprimer main direcory

    -h or --help         Print this usage.
'''

Version = '1.0'
Date = 'Oct 13, 2009'
Author = 'Wubin Qu [quwubin@gmail.com], BIRM, China'
License = 'GPL v2'

def check_opt():
    '''Validating the input parameters'''
    if len(sys.argv) <=1:
        print >> sys.stderr, usage
        exit()

    try:
        opts, arg = getopt.gnu_getopt(sys.argv[1:], "i:o:t:h", ["--help"])
    except:
        print >> sys.stderr, usage
        exit()

    arg_i = ''
    arg_o = ''
    arg_t = os.path.join(src_path, 'lib', 'MPprimer_input_template.txt')
    try:
        for o, a in opts:
            if o == '-h' or o == '--help':
                print >> sys.stderr, usage
                exit()
            if o == '-i':
                arg_i = a
            if o == '-o':
                arg_o = a
            if o == '-t':
                arg_t = a
    except:
        print >> sys.stderr, usage
        exit()

    if not arg_i:
        print >> sys.stderr, 'Your sequence in FASTA format is needed.'
        print >> sys.stderr, usage
        exit()
    else:
        try:
            fh = open(arg_i)
        except:
            print >> sys.stderr, 'Can not open file %s' % arg_i
            exit()

    LSC.FastaCheck(arg_i)

    if not arg_o:
        print >> sys.stderr, 'Output file is needed.'
        print >> sys.stderr, usage
        exit()
    
    return (arg_i, arg_o, arg_t)

def assign_size_range(records):
    '''Cal size range'''
    size_range_list = []
    # Default support 18-plex PCR primer design
    #size_range_standard = [100, 180, 260, 320, 400, 480, 560, 640, 740, 840, 950, 1100, 1250, 1400, 1550, 1700, 1850, 2000]
    size_range_standard = [100, 200, 300, 400, 500, 600, 700, 800, 900, 1000, 1200, 1400, 1600, 1800, 2000]
    size_range_dict = {}

    size_list = []
    for record in records:
        length = record.length
        size_list.append(length)

    size_list.sort()
    for i in range(len(size_list)):
        size = size_list[i]
        if size < 100:
            size_range = '%s-%s' % (0, size)
        #elif size > 1800:
        #    size_range = '%s-%s' % (1600, 2200)
        else:
            # Need modify
            if i > len(size_range_standard)-2:
                while i / (len(size_range_standard)-1) >= 1:
                    #print 'First: ', i, len(size_range_standard)
                    i = i - len(size_range_standard) + 1
                    #print 'Second: ', i, len(size_range_standard)
            if size_range_standard[i+1] < size:
                tmp_size_range_list = []
                num = 0
                for j in range(i, len(size_range_standard)-1, 1):
                    tmp_size_range = '%s-%s' % (size_range_standard[j], size_range_standard[j+1])
                    tmp_size_range_list.append(tmp_size_range)
                    num = num + 1
                    if num > 5:
                        break
                size_range = ' '.join(tmp_size_range_list)
            elif size_range_standard[i] > size:
                size_range = '%s-%s' % (size-300, size)
            else:
                size_range = '%s-%s' % (size-300, size_range_standard[i+1])

        size_range_dict[size] = size_range

    for record in records:
        length = record.length
        size_range = size_range_dict[length]
        size_range_list.append(size_range)

    return size_range_list

def create_MPprimer_input(arg_i, arg_o, arg_t):
    '''Create MPprimer input file based on the template file'''
    primers = []
    try:
        records = LFP.parse(open(arg_i))
    except:
        print >> sys.stderr, 'Can not open file %s' % arg_i
        exit()

    size_range_list = assign_size_range(records)

    for record in records:
        tmp_dict = {}
        id = record.id
        seq = record.sequence
        seq = seq.strip()
	seq = seq.upper()
        tmp_dict = {
            'id' : id,
            'seq' : seq,
        }
        primers.append(tmp_dict)

    try:
        fh = open(arg_t)
    except:
        print >> sys.stderr, 'Template %s can not be opened' % arg_t
        exit()

    template = fh.read()
    fh.close()

    try:
        fo = open(arg_o, 'w')
    except:
        print >> sys.stderr, 'Output file %s can not be opened to write' % arg_o
        exit()

    for i in range(len(primers)):
        primer = primers[i]
        size_range = size_range_list[i]
        id = primer['id']
        seq = primer['seq']
        p3record = re.sub('\/\/primer_seq_id\/\/', id, template)
        p3record = re.sub('\/\/sequence\/\/', seq, p3record)
        p3record = re.sub('\/\/product_size_range\/\/', size_range, p3record)
        fo.write(p3record)

    fo.close()

def main ():
    '''Main function'''
    (arg_i, arg_o, arg_t) = check_opt()
    create_MPprimer_input(arg_i, arg_o, arg_t)


if __name__ == '__main__':
    main()

