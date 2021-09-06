# reads to an array of values ​​and multiplies them by two a read as many values ​​as you want

echo -n "Enter n values"

for ((i=0; i<5; i++))
do

	read item
	array[$i]=$item
	
done

for ((i=0; i<5; i++))
do
	array[$i]=$(( array[$i] * 2 ))

	echo "${array[$i]}"
done
