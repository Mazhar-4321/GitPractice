echo "Enter the value of n"
read n
declare -a array
echo "enter array elements "
for((i=0;i<n;i=$((i+1))))
do
read array[$i]
done
#echo ${array[@]}
echo "Enter q value"
read q
minIndex=0
minValue=${array[0]}
 
for((i=0;i<${#array[@]};i=$((i+1))))
do
minIndex=$i
minValue=${array[$i]}
for((j=$((i+1));j<${#array[@]};j=$((j+1))))
do
if [ $minValue -gt ${array[$j]} ]
then
minValue=${array[$j]}
minIndex=$j
fi
done
temp=${array[$i]}
array[$i]=${array[$minIndex]}
array[$minIndex]=$temp
done
i=${#array[@]}
while [[ q -ge 1 ]]
do
q=$((q-1))
i=$((i-1))
done
if [[ $i -ge 0 ]]
then
echo ${array[$i]}
else
echo "Invalid q value "
fi

