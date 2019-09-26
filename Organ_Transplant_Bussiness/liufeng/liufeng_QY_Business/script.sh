#1 3G filter
barcodeLength=5
if [ ! -f R19010520-OG190314-S2QYX455H1.withtag.R1.fq.gz ]
then
        if [ $barcodeLength -gt 2 ]
then
	perl /data/pipeline/NGS_Target_Sequencing/Duplex-Sequencing/Nat_Protocols_Version/tag_to_header.pl R19010520-OG190314-S2QYX455H1_combined_R1.fastq.gz 
        else
                ln -s R19010520-OG190314-S2QYX455H1_combined_R1.fastq.gz R19010520-OG190314-S2QYX455H1.withtag.R1.fq.gz
        fi
fi
#1#4 5G genotyping
if [ ! -f R19010520-OG190314-S2QYX455H1.sort.bam ]
then
        /data/soft/bin/bwa mem /data/Database/hg19/ucsc.hg19.fasta R19010520-OG190314-S2QYX455H1.withtag.R1.fq.gz -t 16 -R "@RG\tID:R19010520-OG190314-S2QYX455H1\tSM:R19010520-OG190314-S2QYX455H1" -v 1
fi
if [ ! -f R19010520-OG190314-S2QYX455H1.sort.bam.bai ]
then
        /data/soft/bin/sambamba  index R19010520-OG190314-S2QYX455H1.sort.bam
fi

