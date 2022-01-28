value1=$((RANDOM%5+15))
echo "random number : $value1"
value2=$((RANDOM%5+15))
echo "random number : $value2"
value3=$((RANDOM%5+15))
echo "random number : $value3"
value4=$((RANDOM%5+15))
echo "random number : $value4"
value5=$((RANDOM%5+15))
echo "random number : $value5"
sum=$(($value1+$value2+$value3+$value4+$value5))
echo "sum of 5 values : $sum"
avg=$((sum/5))
echo "average of 5 values : $avg"