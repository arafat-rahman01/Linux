A(){
    echo "Hello, $1 $2"
}
A Arafat Rahman

#Squre print
sqr(){
    echo $(($1*$1))
}

sqr 6

#factorial

fact(){
    if [ "$1" -le 1 ];then
        echo 1
    else 
        prev=$(fact $(($1-1)))
        echo $(( $1 * prev ))
    fi
}

read n
echo "$(fact $n)"
