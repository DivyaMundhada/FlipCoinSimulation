#! /bin/bash -x

Head=0
Tail=1
H=0
T=0
count=0

read -p "Enter how many times you want to flip the coin:" number

while [ $count -lt $number ]
do
        a=$(( RANDOM % 2 ))

        if [ $a -eq 0 ]
        then
        echo Head won
        (( H++ ))

        else
        echo Tail Won
        (( T++ ))
        fi

        (( count++ ))
done

echo "Number of times head won:" $H
echo "Number of times tail won:" $T
