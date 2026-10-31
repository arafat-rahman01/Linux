f=("a" "b" "c")
echo "${f[@]}"

for i in "${f[@]}";do
    echo "$i"
done

echo "${f[@]:1:3}"

read -a aa
echo "${aa[@]}"

read n
for (( i=0;i<n;i++ )); do
    read a[i]
done
echo "${a[@]}"

read n
for (( i=0;i<n;i++ )); do
    read marks[i]
done

l=${#marks[@]}
sum=0
for (( i=0;i<l;i++)); do
    sum=$((sum + marks[i]))
done

echo "$sum"
echo "$l"
echo "$((sum/l))"