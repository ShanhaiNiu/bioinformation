for i in `cat SampleID.txt`
do
	samstr=${i#*QY}	
	samstr=${samstr%H*} 
        echo $samstr
done

