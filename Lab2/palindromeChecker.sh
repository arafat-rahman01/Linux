read word

reverse=""
length=${#word}

#Reverse 
for (( i=length-1;i>=0;i--));do
    reverse="$reverse${word:i:1}"
done
#compare
if [ "$word" = "$reverse" ];then
    echo "Yes"
else echo "No"
fi