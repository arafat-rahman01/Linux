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

count=10   # global variable 
myFunc() { 
local count=5   # local variable, only visible inside myFunc 
echo "Inside function: $count" 
} 
myFunc 
echo "Outside function: $count"