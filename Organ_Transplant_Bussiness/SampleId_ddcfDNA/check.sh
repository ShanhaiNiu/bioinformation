for i in `cat Allsample_name.txt`
do
	samstr=${i#*QY}
	samstr=${samstr%H*}
	cd
	cd /data/project/Organ_Transplant_Bussiness
	for j in QY*
	do
		if [[ ${j/${samstr}//} == $j ]]
		then
			continue
		else 
			cd $j
		#	echo $j
			if [ -a "$i" ]
			then  
				cd $i
					tar_percent=$(ls *.ddcfDNA_percent.xls)
				
				#	echo $tar_percent
					ln -s /data/project/Organ_Transplant_Bussiness/$j/$i/$tar_percent /data/project/tmp/SampleId_ddcfDNA/ddcfDNA_percent
				cd ..
			fi
			cd ..
		fi

	done
done

