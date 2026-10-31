name="ABC"
echo "${name}"
echo "${#name}"
echo "${name:1:3}"
name2="DEF"
echo "$name $name2"

s="I like nothing, nothing like"
echo "${s/like/choice}"
echo "${s//like/choice}"

if [ "$name" = "$name2" ]; then
    echo "Equal"
else
    echo "Not"
fi

read word
rev=""
len=${#word}

for (( i=len-1;i>=0;i-- ));do
    rev="$rev${word:i:1}"
done

if [ "$word" = "$rev" ];then
    echo "Yes"
else  
    echo "No"
fi