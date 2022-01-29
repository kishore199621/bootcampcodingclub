read -p " enter values " a b c 
w=$((a+b*c))
echo "c1 : $w"
x=$((a*b+c))
echo "c2 : $x"
y=$((c+a/b))
echo "c3 : $y"
z=$((a%b+c))
echo "c4 : $z"

declare -A compute
compute[c1]=$w
compute[c2]=$x
compute[c3]=$y
compute[c4]=$z
echo "Dictionary : ${compute[@]}"


echo " Ascending number : "

numbers=($w $x $y $z)
for (( i=0 ; i < ${#numbers[@]} ; i++ ))
do
for (( j=0 ; j < ${#numbers[@]} ; j++ ))
do
if [[ ${numbers[$j]} -gt ${numbers[$i]} ]]
then
tmp=${numbers[$i]}
numbers[$i]=${numbers[$j]}
numbers[$j]=${tmp}
fi
done
done
for n in "${numbers[@]}"
do
echo "$n"
done


echo " Ascending number : "

numbers=($w $x $y $z)
for (( i=0 ; i < ${#numbers[@]} ; i++ ))
do
for (( j=0 ; j < ${#numbers[@]} ; j++ ))
do
if [[ ${numbers[$j]} -lt ${numbers[$i]} ]]
then
tmp=${numbers[$i]}
numbers[$i]=${numbers[$j]}
numbers[$j]=${tmp}
fi
done
done
for n in "${numbers[@]}"
do
echo "$n"
done