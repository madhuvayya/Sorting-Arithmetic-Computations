#!/bin/bash -x

declare -A computes

echo "enter a value:"
read a
echo "enter b value:"
read b
echo "enter c value:"
read c

i=0

computes[$((i++))]="$(( $a + $b * $c ))"
computes[$((i++))]="$(( $a * $b + $c ))"
computes[$((i++))]="$(( $c + $a / $b ))"
computes[$((i++))]="$(( $a % $b + $b ))"

for((j=0;j<${#computes[@]};j++))
do
	array[$j]=${computes[$j]}
done

for((k=0;k<${#array[@]};k++))
do
	for((l=0;l<${#array[@]};l++))
	do
		if [ ${array[$k]} -gt ${array[$l]} ]
		then
			temp=${array[$k]}
			array[$k]=${array[$l]}
			array[$l]=$temp
		fi
	done
done

echo ${array[@]}
