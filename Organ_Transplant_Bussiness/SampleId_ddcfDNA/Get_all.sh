for i in `cat SampleID.txt`
do
	if [[ $i =~ "S1" ]]
	then
		samstr=${i#*S1}
		echo S1$samstr
	else 
		if [[ $i =~ "S2" ]] 
		then 
			samstr=${i#*S2}
			echo S2$samstr
		else 
			if [[ $i =~ "QY" ]]
			then 
				samstr=${i#*QY}	
				echo QY$samstr
			fi
		fi
	fi
done

