read a # command that reads the value a
read b # command that reads the value b


sum=$((a+b))
subtraction=$((a-b))
division=$((a/b))
multiplication=$((a*b))


echo "Sum:" $sum
echo "Subtraction:" $subtraction
echo "Division" $division
echo "Multiplication:" $multiplication
echo "sqrt($a)" | bc -l  # square root of a value
