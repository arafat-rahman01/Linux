fruits=("Apple" "Banana" "Mango" "Orange")

#echo "${fruits[0]}"
#echo "${fruits[0]}"
echo "${fruits[@]}"

echo "Total fruits: ${#fruits[@]}" #array length

for fruit in "${fruits[@]}"; do
    echo "Fruits: $fruit"
done

#add a new element
fruits[4]="Grapes"
#update idx 1 ele
fruits[1]="Blueberry"
#delete idx 0 ele
unset fruits[0]

echo "${fruits[@]}"