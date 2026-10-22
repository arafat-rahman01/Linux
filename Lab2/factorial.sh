fact(){
    if [ "$1" -le 1 ] ; then
        echo 1
    else 
        prev=$(fact $(($1-1)))
        echo $(( $1*prev ))
    fi
}

read n
res=$(fact $n)
echo "$res"