
flip=$((RANDOM%2))
if [ $flip -eq 0 ]
then
echo "Heads"
else [ $flip -eq 1 ]
echo "Tails"
fi


echo     " singlet combination :"

Head=0
Tail=0
for x in  1 2 3 4 5 6 7 8 9 
do
flip=$((RANDOM%2))
if [ $flip -eq 1 ]
then
echo "Heads "
Head=$(($Head+1))
else
echo "Tails"
Tail=$(($Tail+1))
fi
done

echo     " doublet combination :"


coin1=$((RANDOM%2+1))
coin2=$((RANDOM%2+1))
read -p "enter flips" flip
for (( i=1 ; i<=$flip ; i++ ))
do 
if [ $coin1 -eq 1 ]
then
echo H1
elif [ $coin2 -eq 1 ]
then 
echo H2
elif [ $coin1 -gt 1 ]
then
echo T1	
elif [ $coin2 -gt 1 ]
then
echo T2
else
echo error
fi
done


echo     " triplet combination :"


coin1=$((RANDOM%2+1))
coin2=$((RANDOM%2+1))
coin3=$((RANDOM%2+1))
read -p "enter flips" flip
for (( i=1 ; i<=$flip ; i++ ))
do 
if [ $coin1 -eq 1 ]
then
echo H1
elif [ $coin2 -eq 1 ]
then 
echo H2
elif [ $coin2 -eq 1 ]
then 
echo H3
elif [ $coin1 -gt 1 ]
then
echo T1	
elif [ $coin2 -gt 1 ]
then
echo T2
elif [ $coin3 -gt 1 ]
then
echo T3
else
echo error
fi
done
