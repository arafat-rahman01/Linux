a(){
    echo "Hello, $1 u r $2 yr old"
}
a "Arafat" 24

square(){
    echo $(($1*$1))
}
read x
ans=$(square x)
echo "$ans"