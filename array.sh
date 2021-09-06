# reads to an array of values ​​and multiplies them by two a reading of 5 values ​​is performed

echo -n "Enter 5 values:"

for ((i=0; i<5; i++))
do
	read item # reading of 5 values
	array[$i]=$item # put the values ​​in the array
done

echo "print" # print

for ((i=0; i<5; i++)) 
do # printing of values
	echo "${array[$i]}"
done
