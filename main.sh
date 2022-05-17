#!/bin/bash
 
count=$1
length=$2
read alpha

#Length of file
x=${#alpha}

#Answer variable
ans=""

#Validation checks
if [ $length -lt 1 ]
then
	echo "Error: Length can't be less than 1."
	exit
elif [ $count -lt 2 ]
then
	echo "Error: Count can't be less than 2."
	exit
elif [[ $x == 1 && $length -ge $count ]]
then	
	val=${alpha:0:1}
	for ((i=1;i<count;i++))
		do
			ans+=$val
		done
	echo "$ans"
	echo "Increase aplhabet in input file."
	exit
else

t=-1
f=0
while [ ${#ans} -lt $length ]
do
	#Random number 1
	r1=$(( $RANDOM % $x ))

	#Random number 2
	r2=$(( $RANDOM % $count )) 
	
	if [ $t -eq $r1 ]
	then
		if [ $(($f + $r2)) -ge $count ]
		then 
			continue
		else
			f=$(($f + $r2))
		fi
		
	else
		f=$r2
	fi
	if [[ $(($r2 + ${#ans})) -gt $length || $r2 -eq 0 ]]
	then
		continue
	fi
	#Accessing value at particular index	
	val=${alpha:$r1:1}
	sub=$val
	for ((i=1;i<r2;i++))
		do
			sub+=$val
		done
	ans+=$sub
	echo "$ans"
	t=$r1
done
fi
