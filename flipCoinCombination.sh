#! /bin/bash -x

Head=0
Tail=1

cointoss=$(( RANDOM%2 ))

if [ $cointoss -eq $Head ]
then
echo "Head has occured"
else
echo "Tail has occured"
fi
