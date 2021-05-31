#! /bin/bash -x

Head=0
Tail=1
count=0
sum=0
HH=0
HT=0
TH=0
TT=0

read -p "Enter how many times you want to flip the coin twice :" number

while [ $count -lt $number ]
do
        a=$(( RANDOM % 2 ))

        if [ $a -eq 0 ]
        then

	b=$(( RANDOM % 2 ))
	
	if [ $b -eq 0 ]
	then
        Coin[((sum))]='HH'
	(( HH++ ))
	else
	Coin[((sum))]='HT'
	(( HT++ ))
	fi

        else
	c=$(( RANDOM % 2 ))

	if [ $b -eq 0 ]
	then
	Coin[((sum))]='TH'
	(( TH++ ))
	else
	Coin[((sum))]='TT'
        (( TT++ ))
        fi

        fi

	(( sum ++ ))
        (( count++ ))
done

echo ${Coin[*]}

HHpercent=$( echo $HH $number | awk '{print $1/$2*100}' )
echo "Percent of Doublet combination(HH) :" $HHpercent

TTpercent=$( echo $TT $number | awk '{print $1/$2*100}' )
echo "Percent of Doublet combination(TT) :" $TTpercent

THpercent=$( echo $TH $number | awk '{print $1/$2*100}' )
echo "Percent of Doublet combination(TH) :" $THpercent

HTpercent=$( echo $HT $number | awk '{print $1/$2*100}' )
echo "Percent of Doublet combination(HT) :" $HTpercent

