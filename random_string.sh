#!/bin/bash
# Author : Sri

## inputs are,  number of times
random_string_unix()
{
    cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w ${1:-30} | head -n 1
}

### for mac users, use this
random_string_mac()
{
  cat /dev/urandom | env LC_CTYPE=C tr -dc 'a-zA-Z0-9' | fold -w 30 | head -n 1
}

### sometime, if we need extra characters like this !@#$%^&*()_+?><~`';][
random_complex_string()
{
  cat /dev/urandom | tr -dc "a-zA-Z0-9!@#$%^&*()_+?><~\`;'" | fold -w 32 | head -n 1
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
