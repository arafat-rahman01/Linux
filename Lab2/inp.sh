#take all values in one line 
read -a nums
echo "${nums[@]}"

#take one value at a time 
read n
for((i=0;i<n;i++));do
    echo "Enter ele $((i+1)):"
    read nums[i]
done

echo "Array ele: ${nums[@]}"

#Building the array with += while reading 
numbers=()      # start with an empty array 
echo "How many elements do you want to enter?" 
read n 
for (( i=0; i<n; i++ )); do 
    echo "Enter a number:" 
    read value 
    numbers+=("$value") 
done 
echo "Array elements: ${numbers[@]}"