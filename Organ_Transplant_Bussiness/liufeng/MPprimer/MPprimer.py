#!/usr/bin/python
# -*- coding: utf-8 -*-
'''MPprimer: program for Multiplex PCR primer design with high reliability.'''
from __future__ import division

import sys, os, getopt
import time
import re
import subprocess
import copy
import LightBio.FunctionInCommon as FIC
import LightBio.LightFastaParser as LFP
import LightBio.Primer3OutputParser as P3OP
import LightBio.MFEprimerParser4MPprimer as MP4MP
from LightBio import stats
from LightBio import TimeFormat
from LightBio import GelMobility 
from operator import itemgetter
src_path = os.path.split(os.path.realpath(sys.argv[0]))[0]
sys.path.append(src_path)

Version = '1.4'
Date = 'Jun 10, 2010'
Author = 'Wubin Qu, Zhiyong Shen and Chenggang Zhang'
License = 'GPL v3'
Citation = '''
Zhiyong Shen*, Wubin Qu*, Wen Wang, Yiming Lu, Yonghong Wu, Zhifeng Li, Xingyi Hang, 
Xiaolei Wang, Dongsheng Zhao, Chenggang Zhang. MPprimer: a program for reliable 
multiplex PCR primer design. BMC Bioinformatics, 2010, 11:143. (Join first author)
'''

usage = '''
Notice: Before running MPprimer.py, it's recommended to use CreateMPprimerInput.py
program included in MPprimer package to create Primer3 like input file 
for MPprier. Run "CreateMPprimerInput.py -h" for usage help.

After create the input file, it's recomended to modify the parameters,
such as "Product size range", in the file to adjust your need.

Usage:

    MPprimer.py -i Primer3_like_template_file -o output_file [Options]


[Options]

    -d file_name	Database file name (formated by formatdb command), 
			default is None.

    -l number		Number of PSC (Primer set combination) to show, 
			default is 15.

    -c number		Concentration of gel for virtual electrophoresis 
			(%): 0.5, 1, 1.5, 2 are OK, default is 1.

    -W word_size        The same parameter in NCBI BLAST. Default is 11.

    -e E-value          The same parameter in NCBI BLAST. Default is 1000.

    -m MinBS            Minimum migration distance of the amplicons in 1% agarose gel 
                        electrophoresis and should be greater than a certain distance 
                        so that the DNA bands can be easily distinguished by human naked eyes.
                        Default is 2mm. Legal value are: 1mm, 3mm or 0bp, 2bp, 10bp, etc.

'''

references = '''
    Qu, W., Shen, Z., Zhao, D., Yang, Y. and Zhang, C. (2009) MFEprimer: 
    multiple factor evaluation of the specificity of PCR primers, 
    Bioinformatics, 25, 276-278.
    
    Altschul, S.F., Madden, T.L., Schaffer, A.A., Zhang, J., Zhang, Z., Miller, W. 
    and Lipman, D.J. (1997) Gapped BLAST and PSI-BLAST: a new generation of protein
    database search programs, Nucleic Acids Res, 25, 3389-3402.
    '''

global_array_out = []

def write(rec, N, array):
    '''Output'''
    out = []
    for i in range(N):
        out.append(array[rec[i]])

    global_array_out.append(out)

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
    # p represents the p-multiple PCR.

    # Position changed


    # Number changed
    index = pre_array.index(min(pre_array))
    global global_array_out
    global_array_out = []
    pre_array[index] = pre_array[index] + 1
    # Can not greater than the primer return number
    if pre_array[index] > 4: 
        return False

    N = len(pre_array)
    rec = [0 for col in range(N+1)]
    used = [0 for col in range(N+1)]
    depth = 0
    arrange(rec, used, depth, N, pre_array)

    array_out = copy.deepcopy(global_array_out)
    return array_out

def check_opt():
    '''Checking and validating parameters'''
    if len(sys.argv) <=1 :
	print >> sys.stderr, usage
	exit()
    else:
        opts, args = getopt.gnu_getopt(sys.argv[1:], "i:o:d:W:e:c:l:m:h", ["--help"])

    arg_i = ''
    arg_o = ''
    arg_l = 15
    arg_d = None
    arg_c = 1
    word_size = 11
    e_value = 1000
    minbs = '2mm'
    try:
	for o, a in opts:
	    if o == "-h" or o == "--help":
		print usage
		exit()
	    if o == '-i':
		arg_i = a
	    if o == '-o':
		arg_o = a
	    if o == '-d':
		arg_d = a
	    if o == '-l':
		arg_l = a
	    if o == '-c':
		arg_c = a
	    if o == '-W':
		word_size = a
	    if o == '-e':
		e_value = a
	    if o == '-m':
		minbs = a
    except:
	print >> sys.stderr, usage
	exit()

    if not arg_i:
	print >> sys.stderr, 'Input file (Primer3 command line input file like) needed.'
	print >> sys.stderr, usage
	exit()

    if not arg_o:
	print >> sys.stderr, 'Output file needed.'
	print >> sys.stderr, usage
	exit()

    return (arg_i, arg_o, arg_d, int(arg_l), int(arg_c), int(word_size), int(e_value), minbs)

def get_conc(arg_i):
    '''Get conc of monovalent, divalent, dNTP, oligo'''
    PRIMER_SALT_CONC = ''
    PRIMER_DIVALENT_CONC = ''
    PRIMER_DNTP_CONC = ''
    PRIMER_DNA_CONC = ''
    try:
	fh = open(arg_i)
    except:
	print >> sys.stderr, 'Can not open file %s, or it is not exist.' % arg_i
	exit()

    while 1:
        line = fh.readline()
        if not line:
	    break
	if line.startswith('PRIMER_SALT_CONC'):
	    PRIMER_SALT_CONC = line.split('=')[1].strip()
	if line.startswith('PRIMER_DIVALENT_CONC'):
	    PRIMER_DIVALENT_CONC = line.split('=')[1].strip()
	if line.startswith('PRIMER_DNTP_CONC'):
	    PRIMER_DNTP_CONC = line.split('=')[1].strip()
	if line.startswith('PRIMER_DNA_CONC'):
	    PRIMER_DNA_CONC = line.split('=')[1].strip()

	if PRIMER_SALT_CONC and PRIMER_DIVALENT_CONC and PRIMER_DNTP_CONC and PRIMER_DNA_CONC:
	    break

    if not (PRIMER_SALT_CONC and PRIMER_DIVALENT_CONC and PRIMER_DNTP_CONC and PRIMER_DNA_CONC):
        error = '''
	primer3_core running error!

Notice: Before running MPprimer.py, it's recommended to use CreateMPprimerInput.py
program included in MPprimer package to create Primer3 like input file 
for MPprier. Run "CreateMPprimerInput.py -h" for usage help.

After create the input file, it's recomended to modify the parameters,
such as "Product size range", in the file to adjust your need.'''
	print >> sys.stderr, error
        exit()

    return (PRIMER_SALT_CONC, PRIMER_DIVALENT_CONC, PRIMER_DNTP_CONC, PRIMER_DNA_CONC)

def run_primer3(session_dir, arg_i):
    '''Create file for Primer3_core program and run it.'''
    # Run primer3_core
    cmd_path = os.path.join(src_path, 'bin', 'primer3_core')
    try:
	cmd = '%s <%s' % (cmd_path, arg_i)
	(p3out, p3error) = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE).communicate()
    except:
        error = ''' primer3_core running error!
Notice: Before running MPprimer.py, it's recommended to use CreateMPprimerInput.py
program included in MPprimer package to create Primer3 like input file 
for MPprier. Run "CreateMPprimerInput.py -h" for usage help.

After create the input file, it's recomended to modify the parameters,
such as "Product size range", in the file to adjust your need.'''
	print >> sys.stderr, error
        exit()
	
    # The following code may not be needed
    primer3_output = os.path.join(session_dir, 'primer3_output.txt')
    fh = open(primer3_output,'w')
    fh.write(p3out)
    fh.close()

    return primer3_output

def get_session_dir():
    '''Assign a session id'''
    session_id = '%s.%s' % (time.time(), FIC.random_string(20))
    session_dir = os.path.join(src_path, 'session_tmp', session_id)
    return session_dir

def create_session_dir(session_dir):
    '''Create session directory'''
    if os.path.exists(session_dir):
	session_dir = get_session_dir()
	create_session_dir(session_dir)
    else:
        os.mkdir(session_dir)
	return session_dir

def session_config(during_time=3600):
    '''Configure the session for a user temporarly and clean the session_tmp directory'''
    #during_time = 86400 # One day
    #during_time = 3600 # One hour
    session_directory = os.path.join(src_path, 'session_tmp')

    # clean
    cur_time = time.time()
    for tmp_session_dir in os.listdir(session_directory):
	full_tmp_session_dir = os.path.join(session_directory, tmp_session_dir)
	last_time = os.stat(full_tmp_session_dir).st_mtime
	if (cur_time - last_time) > during_time:
	    for file in os.listdir(full_tmp_session_dir):
		full_file_name = os.path.join(session_directory, tmp_session_dir, file)
		try:
		    os.remove(full_file_name)
		except:
		    pass
	    os.rmdir(full_tmp_session_dir)

    # Assign a session dir
    tmp_session_dir = get_session_dir()
    final_session_dir = create_session_dir(tmp_session_dir)

    return final_session_dir
 
def parse_primer3_output(p3out):
    '''Parse primer3 output and convert them to dict'''
    p3dict = {}
    template_seq = []
    id_list = []
    records = P3OP.parse(open(p3out))
    t_num = 0
    for record in records:
	id = record['PRIMER_SEQUENCE_ID']
	seq = record['SEQUENCE']
	t_num = t_num + 1
	template_seq.append([t_num, id, seq])

	# Checking the primers
	ok = record['PRIMER_PAIR_EXPLAIN']
	if re.search('ok 0\s*$', ok) or re.search('ok 1\s*$', ok):
	    msg = "No acceptable primer pairs were found for %s. Try relaxing various parameters, including the max and min primer melting temperatures, GC content, product size range or primer size." % id
	    print msg
	    exit()

        tmp_dict = {}
	for key, value in record.items():
	    # Primer left sequence
	    r = re.compile('PRIMER_LEFT_(\d+)?(_)?SEQUENCE$')
	    m = r.search(key)
	    if m:
		fp = value
		sn = m.group(1)
		if not sn:
		    sn = 0
		sn = int(sn)
		if not tmp_dict.has_key(sn):
		    tmp_dict[sn] = {}
		tmp_dict[sn]['fp'] = fp

	    # Primer right sequence
	    r = re.compile('PRIMER_RIGHT_(\d+)?(_)?SEQUENCE$')
	    m = r.search(key)
	    if m:
		rp = value
		sn = m.group(1)
		if not sn:
		    sn = 0
		sn = int(sn)
		if not tmp_dict.has_key(sn):
		    tmp_dict[sn] = {}
		tmp_dict[sn]['rp'] = rp

	    # Primer pair penalty
	    r = re.compile('PRIMER_PAIR_PENALTY(_)?(\d+)?$')
	    m = r.search(key)
	    if m:
		penalty = float(value)
		sn = m.group(2)
		if not sn:
		    sn = 0
		sn = int(sn)
		if not tmp_dict.has_key(sn):
		    tmp_dict[sn] = {}
		tmp_dict[sn]['penalty'] = float(penalty)

	    # Primer left Tm
	    r = re.compile('PRIMER_LEFT_(\d+)?(_)?TM$')
	    m = r.search(key)
	    if m:
		fp_tm = value
		sn = m.group(1)
		if not sn:
		    sn = 0
		sn = int(sn)
		if not tmp_dict.has_key(sn):
		    tmp_dict[sn] = {}
		tmp_dict[sn]['fp_tm'] = float(fp_tm)

	    # Primer right Tm
	    r = re.compile('PRIMER_RIGHT_(\d+)?(_)?TM$')
	    m = r.search(key)
	    if m:
		rp_tm = value
		sn = m.group(1)
		if not sn:
		    sn = 0
		sn = int(sn)
		if not tmp_dict.has_key(sn):
		    tmp_dict[sn] = {}
		tmp_dict[sn]['rp_tm'] = float(rp_tm)

	    # Primer left sequence
	    r = re.compile('PRIMER_PRODUCT_SIZE(_)?(\d+)?$')
	    m = r.search(key)
	    if m:
		size = value
		sn = m.group(2)
		if not sn:
		    sn = 0
		sn = int(sn)
		if not tmp_dict.has_key(sn):
		    tmp_dict[sn] = {}
		tmp_dict[sn]['size'] = int(size)

	id_list.append(id)
	p3dict[id] = tmp_dict

    return p3dict, id_list, template_seq

def create_MFEprimer_input_file(session_dir, p3dict):
    '''Create primer files for MFEprimer'''
    MFEprimer_input_file = os.path.join(session_dir, 'MFEprimer_input_file')
    fh = open(MFEprimer_input_file, 'w')
    for id in p3dict.keys():
	for sn in p3dict[id].keys():
	    desc_line = '>%s_%s_fp\n' % (id, sn)
	    fp = p3dict[id][sn]['fp']
	    fp = fp.upper()
	    fh.write(desc_line)
	    fh.write(fp)
	    fh.write('\n')
	    desc_line = '>%s_%s_rp\n' % (id, sn)
	    rp = p3dict[id][sn]['rp']
	    rp = rp.upper()
	    fh.write(desc_line)
	    fh.write(rp)
	    fh.write('\n')
	
    fh.close()
    return MFEprimer_input_file

def run_and_parse_MFEprimer(session_dir, MFEprimer_input_file, template_seq, arg_d, PRIMER_SALT_CONC, PRIMER_DIVALENT_CONC, PRIMER_DNA_CONC, PRIMER_DNTP_CONC, W, e, id_list, ppc_cutoff):
    '''Run MFEprimer-1.5'''
    # Create template_seq file named as 'query.fa' because of history reasons
    query_file = os.path.join(session_dir, 'query.fa' )
    fh = open(query_file, 'w')
    for t_num, id, seq in template_seq:
	desc_line = '>T_%s_%s\n' % (t_num, id)
	#desc_line = '>%s\n' % id
	fh.write(desc_line)
	seq_line = '%s\n' % seq
	fh.write(seq_line)
    fh.close()

    # formatdb
    mfe_dict = {} 
    MFEprimer_dir = os.path.join(src_path, 'MFEprimer')
    formatdb_path = os.path.join(MFEprimer_dir, 'bin', 'formatdb')
    format_cmd = '%s -i %s -p F -o T' % (formatdb_path, query_file)
    try:
	subprocess.Popen(format_cmd, shell=True).wait()
    except:
	msg = 'formatdb error!'
	print msg
	exit()
    
    fastacmd_path = os.path.join(MFEprimer_dir, 'bin', 'fastacmd')
    fastacmd_cmd = '%s -d %s -D 3' % (fastacmd_path, query_file)
    try:
	outtext, outerror = subprocess.Popen(fastacmd_cmd, shell=True, stdout=subprocess.PIPE).communicate()
    except:
	msg = 'fastacmd error!'
	print msg
	exit()

    if outerror:
	print >> sys.stderr, "fastacmd running error!"
	exit()

    expected_hid_dict = {}
    outtext = outtext.strip()
    hid_list = outtext.split('\n')
    for i in range(len(hid_list)):
	hid = hid_list[i]
	id = template_seq[i][1]
	expected_hid_dict[hid] = 'T%s: %s' % (i+1, id)

    # Create db.nal
    db_file = os.path.join(session_dir, 'db.nal')
    if not os.path.exists(db_file):
	try:
	    fh = open(db_file, 'w')

	    db_title = 'TITLE ' + 'MPprimer database' + '\n'
	    if arg_d:
		db = '%s %s' % (os.path.realpath(arg_d), os.path.realpath(query_file))
	    else:
		db = os.path.realpath(query_file)
	    db_info = 'DBLIST ' + db + '\n'
	    fh.write(db_title)
	    fh.write(db_info)
	    fh.close()
	except:
	    error = "Can not open %s for write db file." % db_file
	    print >> sys.stderr, error
	    exit()

    db_file = os.path.join(session_dir, 'db') # remove the '.nal' for Blast. by WQ.
    #db_file = os.path.realpath(arg_d) # remove the '.nal' for Blast. by WQ.

    MFEprimer_path = os.path.join(MFEprimer_dir, 'MFEprimer.py')
    MFEprimer_output = os.path.join(session_dir, 'MFEprimer_output.mfe')
    cmd = '%s -i %s -d %s -W %s -e %s -s %s --monovalent %s --divalent %s --oligo %s --dNTP %s -T F -o %s' % (MFEprimer_path, MFEprimer_input_file, db_file, W, e, ppc_cutoff, PRIMER_SALT_CONC, PRIMER_DIVALENT_CONC, PRIMER_DNA_CONC, PRIMER_DNTP_CONC, MFEprimer_output)
    try:
	subprocess.Popen(cmd, shell=True).wait()
    except:
	msg = 'MFEprimer running error!'
	print msg
	exit()

    amplicons = MP4MP.parse(MFEprimer_output)
    for sn in amplicons.keys():
        fid = amplicons[sn]['fid']
        rid = amplicons[sn]['rid']
        hid = amplicons[sn]['hid']
        size = amplicons[sn]['size']
        desc = amplicons[sn]['desc']
        seq = amplicons[sn]['seq']
        ppc = amplicons[sn]['ppc']
        align = amplicons[sn]['align']
	tmp_dict = {
	    'fid' : fid,
	    'rid' : rid,
	    'hid' : hid,
	    'size' : size,
	    'desc' : desc,
	    'seq' : seq,
	    'ppc' : ppc,
	    'align' : align,
	}
	key = '%s___%s' % (fid, rid)
	if not mfe_dict.has_key(key):
	    mfe_dict[key] = []
	    mfe_dict[key].append(tmp_dict)
	else:
	    # It's possible that the same fid and rid has more than two amplicons
	    mfe_dict[key].append(tmp_dict)

    return MFEprimer_output, mfe_dict, expected_hid_dict

def debug(s):
    '''Debug the program by print the message to file debug.tmp'''
    fh = open('debug.tmp', 'a')
    fh.write(str(s))
    fh.write('\n')
    fh.close()

def check_dimer(MFEprimer_input_file, PRIMER_SALT_CONC, PRIMER_DIVALENT_CONC, PRIMER_DNA_CONC, PRIMER_DNTP_CONC, dG_cutoff):
    '''Check dimer'''
    dG_cutoff = float(dG_cutoff)
    dimer_dict = {}
    dimer_path = os.path.join(src_path, 'bin', 'MPprimer_dimer_check.pl')
    cmd = 'perl %s -f %s -m %s -d %s -o %s -n %s' % (dimer_path, MFEprimer_input_file, PRIMER_SALT_CONC, PRIMER_DIVALENT_CONC, PRIMER_DNA_CONC, PRIMER_DNTP_CONC)
    try:
	(out, error) = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE).communicate()
    except:
	msg = 'Primer dimer running error!'
	print msg
	exit()

    lines = out.split('\n')
    for line in lines:
	if not line.strip():
	    continue
	p1, p2, dG = line.split()
	key1 = '%s___%s' % (p1, p2)
	key2 = '%s___%s' % (p2, p1)

	if float(dG) > dG_cutoff:
	    continue

	if not dimer_dict.has_key(key1): 
	    dimer_dict[key1] = dG
	else:
	    pass

	if not dimer_dict.has_key(key2):
	    dimer_dict[key2] = dG
	else:
	    pass

    return dimer_dict

def draw_matrix_details(matrix, key_array):
    fh = open('matrix_details.csv', 'w')
    fh.write(',')
    fh.write(','.join(key_array))
    fh.write('\n')
    for i in range(len(key_array)):
	tmp_array = []
	for j in range(len(key_array)):
	    matrix_key = '%s___%s' % (key_array[i], key_array[j])
	    score = matrix[matrix_key]
	    tmp_array.append(str(score))
	tmp_array.insert(0, key_array[i])
	fh.write(','.join(tmp_array))
	fh.write('\n')
    fh.close()

def draw_matrix(matrix, key_array):
    fh = open('matrix.csv', 'w')
    new_matrix = {}
    p_id_list = []
    for i in range(len(key_array)):
        p_id = key_array[i].rpartition('_')[0]
        if p_id not in p_id_list:
            p_id_list.append(p_id)

    for i in range(len(key_array)):
        p_id = key_array[i].rpartition('_')[0]
	for j in range(len(key_array)):
            p_id_2 = key_array[j].rpartition('_')[0]
	    matrix_key = '%s___%s' % (key_array[i], key_array[j])
	    score = matrix[matrix_key]
            key = '%s___%s' % (p_id, p_id_2)
            if key in new_matrix:
                new_matrix[key]['score'] += score
                new_matrix[key]['total_num'] += 1
            else:
                new_matrix[key] = {
                    'score' : 0,
                    'total_num' : 0,
                }
                new_matrix[key]['score'] += score
                new_matrix[key]['total_num'] += 1

    fh.write(',')
    fh.write(','.join(p_id_list))
    fh.write('\n')

    for p_id in p_id_list:
        tmp_array = []
        for p_id_2 in p_id_list:
            key = '%s___%s' % (p_id, p_id_2)
            score = new_matrix[key]['score']
            total_num = new_matrix[key]['total_num']
            ratio = score / total_num
            if p_id == p_id_2:
                ratio = 0
            tmp_array.append(str(ratio))

	tmp_array.insert(0, p_id)
        fh.write(','.join(tmp_array))
        fh.write('\n')
    fh.close()

def create_matrix(p3dict, mfe_dict, dimer_dict, arg_d, expected_hid_dict):
    '''Create a matrix for MPprimer'''
    key_array = []
    matrix = {}
    specific_dict = {}
    for id in p3dict.keys():
	for sn in p3dict[id].keys():
	    key = '%s_%s' % (id, sn)
	    key_array.append(key)
	    fp = '%s_fp' % key
	    rp = '%s_rp' % key
	    mfe_key = '%s___%s' % (fp, rp)
	    is_drop = False
	    if mfe_dict.has_key(mfe_key) and len(mfe_dict[mfe_key]) > 1:
		is_expected_hid = 0
		to_check=[]
		for amp in mfe_dict[mfe_key]:
		    hid = amp['hid']
		    if expected_hid_dict.has_key(hid):
			is_expected_hid = is_expected_hid + 1 
                        # Some times, a primer can find more than one binding sites on its template sequence.
                        # If the primer design program, such as Primer3, do not running a local alignment for 
                        # the primers against the template to make sure the specificity of the primers
                        # on the template sequence.
		    else:
			to_check.append(amp)

		if not is_expected_hid:
		    is_drop = True
                elif is_expected_hid > 1:
		    is_drop = True
		else:
		    is_homology = blastclust_check(to_check)
		    if not is_homology:
			is_drop = True

            if is_drop:
                specific_dict[mfe_key] = is_drop

    for i in range(len(key_array)):
	for j in range(i, len(key_array)):
	    matrix_key_1 = '%s___%s' % (key_array[i], key_array[j])
	    matrix_key_2 = '%s___%s' % (key_array[j], key_array[i])
	    Pi_fp = key_array[i] + '_fp'
	    Pi_rp = key_array[i] + '_rp'

	    Pj_fp = key_array[j] + '_fp'
	    Pj_rp = key_array[j] + '_rp'
	    
	    # Cross-non-specific
	    key1 = '%s___%s' % (Pi_fp, Pj_fp)
	    key2 = '%s___%s' % (Pi_fp, Pj_rp)
	    key3 = '%s___%s' % (Pi_rp, Pj_fp)
	    key4 = '%s___%s' % (Pi_rp, Pj_rp)

	    # Self-non-specific
	    key5 = '%s___%s' % (Pi_fp, Pi_fp)
	    key6 = '%s___%s' % (Pi_rp, Pi_rp)
	    key7 = '%s___%s' % (Pj_fp, Pj_fp)
	    key8 = '%s___%s' % (Pj_rp, Pj_rp)

	    # Normal
	    key9 = '%s___%s' % (Pi_fp, Pi_rp)
	    key10 = '%s___%s' % (Pj_fp, Pj_rp)

	    is_drop = 0

	    if i == j:
		if mfe_dict.has_key(key5) or mfe_dict.has_key(key6):
		    is_drop = 1
		if dimer_dict.has_key(key9):
		    is_drop = 1
	    else:
		if mfe_dict.has_key(key1) or mfe_dict.has_key(key2) or mfe_dict.has_key(key3) or mfe_dict.has_key(key4) or mfe_dict.has_key(key5) or mfe_dict.has_key(key6) or mfe_dict.has_key(key7) or mfe_dict.has_key(key8):
		    is_drop = 1

		if dimer_dict.has_key(key1) or dimer_dict.has_key(key2) or dimer_dict.has_key(key4) or dimer_dict.has_key(key9) or dimer_dict.has_key(key10):
		    is_drop = 1

	    if not (mfe_dict.has_key(key9) and mfe_dict.has_key(key10)): 
		# Not working
		is_drop = 1
	    elif len(mfe_dict[key9]) > 1:
		if specific_dict.has_key(key9):
		    is_drop = 1
	    elif len(mfe_dict[key10]) > 1:
		if specific_dict.has_key(key10):
		    is_drop = 1
	    else:
		hid = mfe_dict[key9][0]['hid']
		if not expected_hid_dict.has_key(hid):
		    is_drop = 1

		hid = mfe_dict[key10][0]['hid']
		if not expected_hid_dict.has_key(hid):
		    is_drop = 1

	    matrix[matrix_key_1] = is_drop
	    matrix[matrix_key_2] = is_drop

    #draw_matrix_details(matrix, key_array)
    draw_matrix(matrix, key_array)
    return matrix

def blastclust_check(to_check):
    '''Checking the similarity of amplicons (predicted by MFEprimer) by blastclust program'''
    if len(to_check) < 2:
	return True

    seq_array = []
    for amp in to_check:
	desc = amp['desc']
	seq_array.append(desc)
	seq = amp['seq']
	seq_array.append(seq)

    seq_string = '\n'.join(seq_array)
    cmd_path = os.path.join(src_path, 'MFEprimer', 'bin', 'blastclust')
    cmd = '%s -p F -a 4 -e F' % cmd_path

    try:
	blastclust_out, blastclust_err = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE, stdin=subprocess.PIPE, stderr=subprocess.PIPE).communicate(input=seq_string)
    except:
        error = "blastclust running error!"
	print >> sys.stderr, error
        exit()

    if blastclust_err:
        error = "blastclust running error!"
	print >> sys.stderr, error
        #exit()

    if len(blastclust_out.strip().split('\n')[1:]) > 1:
	return False
    else:
	return True

def compare(key_list, matrix):
    for i in range(len(key_list)):
	key_1 = key_list[i]
	for j in range(i+1, len(key_list)):
	    key_2 = key_list[j]
	    matrix_key = '%s___%s' % (key_1, key_2)
	    if matrix[matrix_key] > 0:
		return False
    return True

def cal_size_interfere_range(p3dict, sn_dict, id_list, minbs):
    '''Cal size interfere range'''
    if re.match('\d+mm', minbs):
        minbs = re.sub('mm', '', minbs)
        minbs = int(minbs.strip())
        for i in range(len(id_list)):
            id = id_list[i]
            sn = sn_dict[id]
            size = p3dict[id][sn]['size']
            min, max = GelMobility.get_size_range(size, gel_conc=1.0, ref_mobility=50, offset=minbs, formula="Helling")
            p3dict[id][sn]['size_range'] = [min, max]
    else:
        minbs = re.sub('bp', '', minbs)
        minbs = int(minbs.strip())
        for i in range(len(id_list)):
            id = id_list[i]
            sn = sn_dict[id]
            size = p3dict[id][sn]['size']
            min = size - minbs
            max = size + minbs
            p3dict[id][sn]['size_range'] = [min, max]

    return p3dict

def is_in_size_range(size, size_range):
    '''Judge whether the size is located in the size interfere range'''
    if size >= size_range[0] and size <= size_range[1]:
	return True
    else:
	return False

def size_interfere_check(p3dict, sn_dict, id_list):
    '''Size interfere checking'''
    flag = True
    for i in range(len(id_list)):
	id = id_list[i]
	sn = sn_dict[id]
	size_i = p3dict[id][sn]['size']
	size_range_i = p3dict[id][sn]['size_range']
	for j in range(i+1, len(id_list)):
	    id = id_list[j]
	    sn = sn_dict[id]
	    size_j = p3dict[id][sn]['size']
	    size_range_j = p3dict[id][sn]['size_range']
	    i_in_j = is_in_size_range(size_i, size_range_j)
	    j_in_i = is_in_size_range(size_j, size_range_i)
	    if i_in_j or j_in_i:
		flag = False
    return flag

def evaluate(sn_array, p3dict, id_list, matrix, minbs):
    '''Evaluate whether the group is good or not'''
    key_list = []
    sn_dict = {}
    for i in range(len(id_list)):
        id = id_list[i]
	sn = sn_array[i]
        if not p3dict[id].has_key(sn):
            return False
	sn_dict[id] = sn
	key = '%s_%s' % (id, sn)
	key_list.append(key)

    # MFEprimer and Dimer checking
    flag = compare(key_list, matrix)
    if flag:
	# Size interfere checking
	p3dict = cal_size_interfere_range(p3dict, sn_dict, id_list, minbs)
	not_in_size_range = size_interfere_check(p3dict, sn_dict, id_list)
        #not_in_size_range = True  # Remove after debuging
	if not_in_size_range:
	    return sn_dict
	else:
	    return False
    else:
	return False

def cal_penalty(sn_dict, p3dict):
    penalty_list = []
    for id in sn_dict.keys():
	sn = sn_dict[id]
	penalty = p3dict[id][sn]['penalty']
	penalty_list.append(penalty)

    mean = '%.4f' % stats.mean(penalty_list)
    if len(penalty_list) < 2:
	stdev = 0
    else:
	stdev = '%.4f' % stats.stdev(penalty_list)
    return mean, stdev

def cal_penalty_for_array_old(pre_array_of_sn_array, p3dict, id_list):
    sn_dict = {}
    array4sort = []
    num = 0
    return_array = []
    for sn_array in pre_array_of_sn_array:
	for i in range(len(id_list)):
	    id = id_list[i]
	    sn = sn_array[i]
            if not p3dict[id].has_key(sn):
                break
	    sn_dict[id] = sn
        if len(sn_dict) < len(id_list):
            continue
	mean, std = cal_penalty(sn_dict, p3dict)
	array4sort.append([num, mean, std])
	num = num + 1

    array4sort.sort(lambda x, y:(
	cmp(x[1], y[1])
	or 
	cmp(x[2], y[2])))

    for array in array4sort:
	return_array.append([pre_array_of_sn_array[array[0]], array[1], array[2]])

    return return_array

def cal_penalty_for_array(pre_array, p3dict, id_list):
    sn_dict = {}

    if not pre_array:
        array_out = [[0 for col in xrange(len(id_list))], ]
    else:
        array_out = create_sn_array(pre_array, len(id_list))

    if not array_out:
        return None

    result_list = []
    for next_array in array_out:
	for i in range(len(id_list)):
	    id = id_list[i]
	    sn = next_array[i]
	    if not p3dict[id].has_key(sn):
		break
	    sn_dict[id] = sn

	#if len(sn_dict) < len(id_list):
	#    next_array, mean, std = cal_penalty_for_array(next_array, p3dict, id_list)
	#else:
	#    mean, std = cal_penalty(sn_dict, p3dict)

	mean, std = cal_penalty(sn_dict, p3dict)

	result_list.append([next_array, mean, std])

    return result_list

def find_group(matrix, p3dict, id_list, arg_l, minbs):
    '''Group the primers using graph expanding algorithm'''
    group_dict = {}
    group_penalty_mean = {}
    group_penalty_std = {}
    sorted_group = []

    num = 0
    pre_array = False
    while True:
        result_list = cal_penalty_for_array(pre_array, p3dict, id_list)
        if not result_list:
            break
        for sn_array, mean, std in result_list:
            if not sn_array:
                break
            pre_array = sn_array
            sn_dict = evaluate(sn_array, p3dict, id_list, matrix, minbs)
            if sn_dict:
                num = num + 1
                if num > arg_l:
                    break
                group_dict[num] = sn_dict
                group_penalty_mean[num], group_penalty_std[num] = mean, std
                sorted_group.append([num, mean, std])
        if num > arg_l:
            break

    sorted_group.sort(lambda x, y:(
	cmp(x[1], y[1])
	or 
	cmp(x[2], y[2])))

    return group_dict, sorted_group, group_penalty_std

def output(elapsed_time, group_dict, sorted_group, group_penalty_std, p3dict, arg_d, arg_o, arg_l, id_list, mfe_dict, expected_hid_dict, word_size, e_value, minbs):
    '''Output'''
    try:
	fh = open(arg_o, 'w')
    except:
	print 'Can not open %s for writing' % arg_o
	exit()
    
    fa_name = arg_o + '.fa'
    fa_fh = open(fa_name, 'w')
    line = 'MPprimer-%s [%s]\n' % (Version, Date)
    fh.write(line)
    line = '%s' % Citation
    fh.write(Citation)
    fh.write('\n\n')
    # Part I: Basic information
    line = '*' * 100
    fh.write(line)
    fh.write('\n')
    minutes, seconds = TimeFormat.seconds_format(elapsed_time)
    line = 'Template sequence (%s)\n' % len(id_list)
    fh.write(line)
    for i in range(len(id_list)):
        id = id_list[i]
        line = '    Template %s: %s\n' % (i+1, id)
        fh.write(line)

    line = '\nPSC (Primer Set Combination): %s\n' % len(sorted_group)
    fh.write(line)
    line = 'Database used for specificity checking: %s\n' % arg_d
    fh.write(line)
    line = 'MinBS: %s\n' % minbs
    fh.write(line)
    line = 'MFEprimer performance: Word size %s, E-value %s\n' % (word_size, e_value)
    fh.write(line)
    line = 'Total time used: %s m %s s\n' % (minutes, seconds)
    fh.write(line)

    line = '*' * 100
    fh.write(line)
    fh.write('\n\n')

    if len(sorted_group) < 1:
	line = 'No PSC was found by MPprimer.\n\nPlease relax your conditions, such as change the product size range.\n\n\n'
	fh.write(line)
	fh.close()
	return False

    result_num = min(arg_l, len(sorted_group))

    line = 'Short description of %s PSCs (Primer Set Combinations) sorted by the mean penalty of the primer set combinations\n\n' % result_num
    fh.write(line)

    serial_number_max_len = max(len('PSC'), len(str(result_num)))
    short_line_list = []
    size_part_max_len = len('Size distribution (bp)')
    tm_part_max_len = len('Tm distribution (°C)')
    penalty_part_max_len = len('Mean penalty')
    for i in range(result_num):
	item_dict = {}
	num, mean, std = sorted_group[i]
	std = group_penalty_std[num]
	size_list = []
	tm_list = []
	tm_array = []
	for id in id_list:
	    sn = group_dict[num][id]
	    size = p3dict[id][sn]['size']
	    fp_tm = p3dict[id][sn]['fp_tm']
	    rp_tm = p3dict[id][sn]['rp_tm']
	    fp_tm = float(fp_tm)
	    rp_tm = float(rp_tm)
	    tm_array.append(fp_tm)
	    tm_array.append(rp_tm)
	    tm = '%.1f/%.1f' % (fp_tm, rp_tm)
	    tm_list.append(tm)
	    size_list.append(str(size))
	tm_mean = stats.mean(tm_array)
	tm_std = stats.stdev(tm_array)
	group_dict[num]['tm_mean'] = tm_mean
	group_dict[num]['tm_std'] = tm_std

	tm_part = ', '.join(tm_list)
	tm_part = '[%s]' % tm_part
	if len(tm_part) > tm_part_max_len:
	    tm_part_max_len = len(tm_part)
	size_part = ', '.join(size_list)
	size_part = '[%s]' % size_part
	if len(size_part) > size_part_max_len:
	    size_part_max_len = len(size_part)
	penalty_part = '%s ± %s' % (mean, std)
	if len(penalty_part) > penalty_part_max_len:
	    penalty_part_max_len = len(penalty_part)
	item_dict['serial_number'] = str(i+1)
	item_dict['size_part'] = size_part
	item_dict['tm_part'] = tm_part
	item_dict['penalty_part'] = penalty_part
	short_line_list.append(item_dict)

    line = 'PSC'.ljust(serial_number_max_len) + ' '*4 + 'Size distribution (bp)'.center(size_part_max_len) + ' '*4 + 'Tm distribution (°C)'.center(tm_part_max_len) + ' '*4 + 'Mean penalty'.center(penalty_part_max_len)
    fh.write(line)
    fh.write('\n\n')
    for item_dict in short_line_list:
	line = item_dict['serial_number'].ljust(serial_number_max_len)
	line = line + ' '*4
	line = line + item_dict['size_part'].center(size_part_max_len)
	line = line + ' '*4
	line = line + item_dict['tm_part'].center(tm_part_max_len)
	line = line + ' '*4
	line = line + item_dict['penalty_part'].center(penalty_part_max_len)

	fh.write(line)
	fh.write('\n')
    
    line = '\n\n\nDetails of the %s PSCs sorted by the mean penalty of the primer set combinations' % result_num
    fh.write(line)
    fh.write('\n\n\n')

    id_max_len = len('Primer ID')

    for i in range(result_num):
	num, mean, std = sorted_group[i]
	std = group_penalty_std[num]
	tm_mean = group_dict[num]['tm_mean']
	tm_std = group_dict[num]['tm_std']
	line = '*' * 100
	fh.write(line)
	fh.write('\n\n')
	line = 'PSC %s: Mean penalty: %s ± %s, Mean Tm: %.1f ± %.1f (°C)' % (i+1, mean, std, tm_mean, tm_std)
	fh.write(line)
        fa_fh.write(line)
	fh.write('\n\n')
	fa_fh.write('\n')

	size_max_len = max(len('Amplicon'), len('size (bp)'))
	primer_seq_max_len = len('Forward primer (FP) / Reverse primer (RP)')
	tm_max_len = max(len('Tm (°C)'), len('(FP / RP)'))
	penalty_max_len = len('Penalty')
	line = ''
	tmp_num = 0
	for id in id_list:
	    tmp_num = tmp_num + 1
	    sn = group_dict[num][id]
	    p_id = 'T%s: %s_%s' % (tmp_num, id, sn)
            fa_id = 'PSC%s_T%s_%s_%s' % (i+1, tmp_num, id, sn)
	    if len(p_id) > id_max_len:
		id_max_len = len(p_id)
	    size = p3dict[id][sn]['size']
	    if len(str(size)) > size_max_len:
		size_max_len = len(str(size))
	    fp = p3dict[id][sn]['fp']
	    rp = p3dict[id][sn]['rp']
	    primer_seq = '5\'-%s-3\' / 5\'-%s-3\'' % (fp, rp)
	    if len(primer_seq) > primer_seq_max_len:
		primer_seq_max_len = len(primer_seq)
	    fp_tm = p3dict[id][sn]['fp_tm']
	    rp_tm = p3dict[id][sn]['rp_tm']
	    fp_tm = float(fp_tm)
	    rp_tm = float(rp_tm)
	    tm = '%.1f / %.1f' % (fp_tm, rp_tm)
	    if len(tm) > tm_max_len:
		tm_max_len = len(tm)
	    penalty = p3dict[id][sn]['penalty']
            fa_desc = '>%s_fp Penalty: %s Size: %s Tm: %s\n%s\n>%s_rp Penalty: %s Size: %s Tm: %s\n%s\n' % (fa_id, penalty, size, fp_tm, fp, fa_id, penalty, size, rp_tm, rp)
            fa_fh.write(fa_desc)
	    if len(str(penalty)) > penalty_max_len:
		penalty_max_len = len(str(penalty))

	    line = line + p_id.ljust(id_max_len) + ' '*4 + str(penalty).ljust(penalty_max_len) + ' '*4 + str(size).center(size_max_len) + ' '*4 + tm.center(tm_max_len) + ' '*4 + primer_seq
	    line = line + '\n'

	detail_title_line_1 = ' '.ljust(id_max_len + 4 + penalty_max_len + 4 - 1) + 'Amplicon'.center(size_max_len) + ' '*5 + 'Tm (°C)'.center(tm_max_len)
	detail_title_line_2 = 'Primer ID'.ljust(id_max_len) + ' '*4 + 'Penalty'.center(penalty_max_len) + ' '*4 + 'size (bp)'.center(size_max_len) + ' '*4 + '(FP/RP)'.center(tm_max_len) + ' '*4 + 'Forward primer (FP) / Reverse primer (RP)'.ljust(primer_seq_max_len)
	fh.write(detail_title_line_1)
	fh.write('\n')
	fh.write(detail_title_line_2)
	fh.write('\n\n')
	fh.write(line)
	fh.write('\n\n')

	tmp_num = 0
	for id in id_list:
	    tmp_num = tmp_num + 1
	    sn = group_dict[num][id]
	    p3_size = p3dict[id][sn]['size']
	    fid = '%s_%s_fp' % (id, sn)
	    rid = '%s_%s_rp' % (id, sn)
	    mfe_key = '%s___%s' % (fid, rid)
	    hid = ''
	    desc = ''
	    seq = ''
	    align = ''
	    deserved_amp = []
	    mfe_amp = []
	    line = '   ** Diagram of the binding pattern between the primers and the template\n\n'
	    deserved_amp.append(line)
	    line = '   ** MFEprimer specificity checking result\n\n'
	    mfe_amp.append(line)
	    line = '* Template %s: %s\n\n' % (tmp_num, id)
	    fh.write(line)
	    for item_dict in mfe_dict[mfe_key]:
		hid = item_dict['hid']

		template_flag = 0
		if expected_hid_dict.has_key(hid):
		    mfe_size = item_dict['size']
		    if int(p3_size) != int(mfe_size):
			print 'P3-Size %s are not identical to MFE-Size %s.\nProgramming bug, please contact Wubin Qu <quwubin@gmail.com>.' % (p3_size, mfe_size)
			#exit()

		    hid = expected_hid_dict[hid]

		    template_flag = 1

		desc = item_dict['desc']
		seq = item_dict['seq']
		align = item_dict['align']

		line = '     *** %s + %s ==> %s\n\n' % (fid, rid, hid)
		if template_flag:
		    deserved_amp.append(line)
		else:
		    mfe_amp.append(line)

		for align_line in align.split('\n'):
		    align_line = '%s\n' % align_line
		    align_line = ' '*9 + align_line
		    if template_flag:
			deserved_amp.append(align_line)
		    else:
			mfe_amp.append(align_line)

                line = '\n' + ' '*9 + desc
		if template_flag:
		    deserved_amp.append(line)
		else:
		    mfe_amp.append(line)

		for line in seq.split('\n'):
		    line = ' '*9 + line + '\n'
		    if template_flag:
			deserved_amp.append(line)
		    else:
			mfe_amp.append(line)
	    
	    for line in deserved_amp:
		fh.write(line)

	    for line in mfe_amp:
		fh.write(line)
	    if len(mfe_amp) < 2:
		line = ' '*9 + 'No MFEprimer specificity checking result is available\n\n\n'
		fh.write(line)
	    else:
		fh.write('\n\n')

    line = 'References\n'
    fh.write(line)
    fh.write(references)
    
    fh.close()
    fa_fh.close()
    return True

def run_cmd_MPprimer(p3dict, id_list, template_seq, session_dir, primer3_output, arg_d, arg_l, arg_c, word_size, e_value, PRIMER_SALT_CONC, PRIMER_DIVALENT_CONC, PRIMER_DNTP_CONC, PRIMER_DNA_CONC, dG_cutoff, ppc_cutoff, minbs):
    '''Called by MPprimer.cgi'''

    p3dict, id_list, template_seq = parse_primer3_output(primer3_output)
    MFEprimer_input_file = create_MFEprimer_input_file(session_dir, p3dict)
    MFEprimer_output, mfe_dict, expected_hid_dict = run_and_parse_MFEprimer(session_dir, MFEprimer_input_file, template_seq, arg_d, PRIMER_SALT_CONC, PRIMER_DIVALENT_CONC, PRIMER_DNA_CONC, PRIMER_DNTP_CONC, word_size, e_value, id_list, ppc_cutoff)
    
    dimer_dict = check_dimer(MFEprimer_input_file, PRIMER_SALT_CONC, PRIMER_DIVALENT_CONC, PRIMER_DNA_CONC, PRIMER_DNTP_CONC, dG_cutoff)
    matrix = create_matrix(p3dict, mfe_dict, dimer_dict, arg_d, expected_hid_dict)
    group_dict, sorted_group, group_penalty_std = find_group(matrix, p3dict, id_list, arg_l, minbs)

    return (group_dict, sorted_group, group_penalty_std, mfe_dict, expected_hid_dict)


if __name__ == '__main__':

    session_dir = session_config(during_time=43200) # relative full path

    # Process the form data
    start_time = time.time()

    (arg_i, arg_o, arg_d, arg_l, arg_c, word_size, e_value, minbs) = check_opt()
    (PRIMER_SALT_CONC, PRIMER_DIVALENT_CONC, PRIMER_DNTP_CONC, PRIMER_DNA_CONC) = get_conc(arg_i)

    primer3_output = run_primer3(session_dir, arg_i)

    p3dict, id_list, template_seq = parse_primer3_output(primer3_output)

    MFEprimer_input_file = create_MFEprimer_input_file(session_dir, p3dict)
    ppc_cutoff = 0.3
    MFEprimer_output, mfe_dict, expected_hid_dict = run_and_parse_MFEprimer(session_dir, MFEprimer_input_file, template_seq, arg_d, PRIMER_SALT_CONC, PRIMER_DIVALENT_CONC, PRIMER_DNA_CONC, PRIMER_DNTP_CONC, word_size, e_value, id_list, ppc_cutoff)

    dG_cutoff = -7
    dimer_dict = check_dimer(MFEprimer_input_file, PRIMER_SALT_CONC, PRIMER_DIVALENT_CONC, PRIMER_DNA_CONC, PRIMER_DNTP_CONC, dG_cutoff)

    matrix = create_matrix(p3dict, mfe_dict, dimer_dict, arg_d, expected_hid_dict)

    group_dict, sorted_group, group_penalty_std = find_group(matrix, p3dict, id_list, arg_l, minbs)
    end_time = time.time()
    elapsed_time = int(end_time - start_time)

    is_find_group = output(elapsed_time, group_dict, sorted_group, group_penalty_std, p3dict, arg_d, arg_o, arg_l, id_list, mfe_dict, expected_hid_dict, word_size, e_value, minbs)

    exit()

