#! /bin/bash -x

Head=0
Tail=1
H=0
T=0

while [ $H -lt 21 ] && [ $T -lt 21 ]
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

done

echo "Number of times head won:" $H
echo "Number of times tail won:" $T

if [ $H -gt $T ]
then
headabove=$(( $H - $T ))
echo Head won in total count by $headabove
elif [ $T -gt $H ]
then
tailabove=$(( $T - $H ))
echo Tail won in total count by $tailabove
else
echo It is a tie
fi
