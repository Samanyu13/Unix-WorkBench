#!usr/bin/bash

c=0
for i in $(ls)
do
    if [[ -e $i ]]
    then
        let c+=1
    fi
done
echo $c

echo "How many files do you think are there in the present directory?"
while [[ true ]]
do
    read -p "Input a guess: " guess
    if [[ $guess -gt $c ]]
    then
        echo "The guess is too High!"
    elif [[ $guess -lt $c ]]
    then
        echo "The guess is too Low!"
    else
        echo "Yay..! You're Right!"
        break
    fi
done