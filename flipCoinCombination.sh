#! /bin/bash -x

Head=0
Tail=1
count=0
sum=0
HHH=0
HHT=0
HTH=0
HTT=0
THH=0
THT=0
TTH=0
TTT=0

read -p "Enter how many times you want to flip the coin thrice :" number

while [ $count -lt $number ]

do
        a=$(( RANDOM % 2 ))

	        if [ $a -eq 0 ]
        	then

		b=$(( RANDOM % 2 ))
	
			if [ $b -eq 0 ]
			then

			d=$(( RANDOM % 2 ))
	
				if [ $d -eq 0 ]
				then
        			Coin[((sum))]='HHH'
				(( HHH++ ))
				else
				Coin[((sum))]='HHT'
				(( HHT++ ))
				fi
	
			else
	
				if [ $d -eq 0 ]
				then
				Coin[((sum))]='HTH'
				(( HTH++ ))
				else
				Coin[((sum))]='HTT'
				(( HTT++ ))
				fi
			fi

		else
	
			if [ $b -eq 1 ]
			then
				if [ $d -eq 1 ]
				then
				Coin[((sum))]='TTT'
				(( TTT++ ))
				else
				Coin[((sum))]='TTH'
				(( TTH++ ))
				fi

        		else
				if [ $d -eq 0 ]
				then
				Coin[((sum))]='THH'
				(( THH++ ))
				else
				Coin[((sum))]='THT'
				(( THT++ ))
				fi
			fi
		fi
(( sum++ ))
(( count++ ))

done

echo ${Coin[*]}

HHHpercent=$( echo $HHH $number | awk '{print $1/$2*100}' )
echo "Percent of Triplet combination(HHH) :" $HHHpercent

HHTpercent=$( echo $HHT $number | awk '{print $1/$2*100}' )
echo "Percent of Triplet combination(HHT) :" $HHTpercent

HTHpercent=$( echo $HTH $number | awk '{print $1/$2*100}' )
echo "Percent of Triplet combination(HTH) :" $HTHpercent

HTTpercent=$( echo $HTT $number | awk '{print $1/$2*100}' )
echo "Percent of Triplet combination(HTT) :" $HTTpercent

THHpercent=$( echo $THH $number | awk '{print $1/$2*100}' )
echo "Percent of Triplet combination(THH) :" $THHpercent

THTpercent=$( echo $THT $number | awk '{print $1/$2*100}' )
echo "Percent of Triplet combination(THT) :" $THTpercent

TTHpercent=$( echo $TTH $number | awk '{print $1/$2*100}' )
echo "Percent of Triplet combination(TTH) :" $TTHpercent

TTTpercent=$( echo $TTT $number | awk '{print $1/$2*100}' )
echo "Percent of Triplet combination(TTT) :" $TTTpercent
