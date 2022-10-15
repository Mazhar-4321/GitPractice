read n
ans=1
while [[ $n -gt 1 ]]
do
ans=$((ans*$n))
n=$((n-1))
done
echo "Factorial:$ans"
flag=1
count=0
while [[ flag -eq 1 && $ans -gt 0 ]]
do
lastDigit=$(($ans%10))
if [[ $lastDigit -eq 0 ]]
then
count=$((count+1))
else
flag=0
fi
ans=$((ans/10))
done

echo "Trailing Zeros:$count"
