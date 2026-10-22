marks=(80 90 75 60 95)
total=0

for i in "${marks[@]}";do
    total=$((total+i))
done

count=${#marks[@]}
average=$((total/count))

echo "Toal Marks: $total"
echo "Number of Subjects: $count"
echo "Average Marks: $average"