mrks=(80 90 75 60 95)
t=0

for i in "${mrks[@]}";do
    t=$((t+i))
done

c=${#mrks[@]}
avrg=$((t/c))

echo "$c"
echo "$avrg"
echo "$t"