read n1
read n2
if [ $n1 -gt $n2 ]; then
    echo "n1"
elif [ $n1 -lt $n2 ]; then
    echo "n2"
else 
    echo "num is zero"
fi

echo " Sum: $(($n1+$n2)) , diff: $(($n1-$n2)) , product: $(($n1*$n2)) , Quotient: $(($n1/$n2)) "