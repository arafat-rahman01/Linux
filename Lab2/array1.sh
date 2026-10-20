fruits=("Apple" "Banana" "Mango" "Orange")

#echo "${fruits[0]}"
#echo "${fruits[0]}"
#echo "${fruits[@]}"

echo "Total fruits: ${#fruits[@]}" #array length

for fruit in "${fruits[@]}"; do
    echo "Fruits: $fruit"
done