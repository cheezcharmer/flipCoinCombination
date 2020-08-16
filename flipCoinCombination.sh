#!/bin/bash -x

tosses=100
declare -A coin
coin[heads]=0
coin[tails]=0

for (( i=1; i<=$tosses; i++))
do
	coin=$((RANDOM%2+1))
	if [[ $coin -eq 1 ]]
	then
		coin[heads]=$((${coin[heads]}+1))
	else
		coin[tails]=$((${coin[tails]}+1))
	fi
done

echo "Percantage of Heads: "${coin[heads]}
echo "Percentage of Tails: "${coin[tails]}
