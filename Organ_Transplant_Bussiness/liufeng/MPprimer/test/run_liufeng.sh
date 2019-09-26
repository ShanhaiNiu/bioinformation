#!/bin/sh
#python ../CreateMPprimerInput.py -i  ../../liufeng_snp/SNP.fasta -o liufeng_snp.p3

#echo "Change the product size range in example_seq.p3 file, see changed_example_seq.p3 for example."

python ../MPprimer.py -i liufeng_snp_change.p3 -o liufeng_snp_seq.mp
