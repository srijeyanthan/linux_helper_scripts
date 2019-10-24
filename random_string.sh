#!/bin/bash
# Author : Sri

## inputs are,  number of times
random_string()
{
    cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w ${1:-30} | head -n 1
}

i="0"
while true
do
 i=$[$i+1]

if [ $i -gt $1 ]
then
    echo "Generation is done !"
    break
fi
var=$(random_string)
echo "$var"
done
