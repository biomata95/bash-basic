# Dynamic vector, values ​​multiplied by two and put the multiplication result in another vector

echo "Enter as many values ​​as you like. To finish reading press Crtl+D"

array=()
array2=()

while read -r item; # performed the reading of values ​​and to finish type Ctrl+D
do
	array+=("$item")
done

size=${#array[@]} # size of vector

for ((i=0; i<size; i++)) 
do # as long as the size is not reached the vector values ​​are multiplied by 2 and placed in another vector
	array2[$i]=$(( array[$i] * 2 ))
done

echo "Number of items: " ${#array[@]}
echo "Data: " ${array[@]}
echo "Data multiplied by two: " ${array2[@]}
