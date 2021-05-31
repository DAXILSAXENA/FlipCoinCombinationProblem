#! /bin/bash -x

Head=0
Tail=1
count=0
sum=0
H=0
T=0

read -p "Enter how many times you want to flip the coin:" number

while [ $count -lt $number ]
do
        a=$(( RANDOM % 2 ))

        if [ $a -eq 0 ]
        then
        Coin[((sum))]='head'
	(( H++ ))

        else
	Coin[((sum))]='tail'
	(( T++ ))
        fi

	(( sum ++ ))
        (( count++ ))
done

echo ${Coin[*]}

headpercent=$( echo $H $number | awk '{print $1/$2*100}' )
echo "Percent of singlet combination(HEAD) :" $headpercent

tailpercent=$( echo $T $number | awk '{print $1/$2*100}' )
echo "Percent of singlet combination(TAIL) :" $tailpercent

