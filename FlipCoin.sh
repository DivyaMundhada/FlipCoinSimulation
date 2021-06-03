#! /bin/bash -x

cointoss=$(( RANDOM%2 + 1 ))
read -p "enter your choice: 1 head 2 tail " choice

if [ $cointoss -eq $choice ]
then
        if [ $cointoss -eq 1 ]
        then
        echo "Head Win"
        fi
else
        echo "Tail Win"
fi

