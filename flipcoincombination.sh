#!/bin/bash -x

echo "Welcome to Flip Coin Combination Program"

head=0
declare -A Singlet

for ((i=1; i<=50; i++))
do
        randomCheck1=$((RANDOM % 2))

        if (( $randomCheck1 == 0 ))
        then
                echo "H"
                ((Singlet[H]++))
        else
                echo "T"
                ((Singlet[T]++))
        fi
done

echo ${!Singlet[@]}
echo ${Singlet[@]}

H=`awk "BEGIN {print (${Singlet[HH]}/50)*100}"`
echo "H = $H%"
T=`awk "BEGIN {print (${Singlet[T]}/50)*100}"`
echo "T = $T%"
