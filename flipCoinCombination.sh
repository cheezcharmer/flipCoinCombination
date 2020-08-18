#!/bin/bash

read -p "Enter Number of tosses: " tosses
read -p "Enter 1 or 2 or 3 coins: " coins

declare -A coin

if [[ $coins -eq 1 ]]
then
	coin[t]=0
	coin[h]=0
	for (( i=1; i<=$tosses; i++))
	do
		coin=$((RANDOM%2+1))
		if [[ $coin -eq 1 ]]
		then
			coin[h]=$((${coin[h]}+1))
		else
			coin[t]=$((${coin[t]}+1))
		fi
	done
	percent_head=$(((${coin[h]}*100)/$tosses))
	percent_tails=$(((${coin[t]}*100)/$tosses))
	echo "Percentage of Heads: "$percent_head
	echo "Percentage of Tails: "$percent_tails
elif [[ $coins -eq 2 ]]
then
	coin[hh]=0
	coin[ht]=0
	coin[th]=0
	coin[tt]=0
	for (( i=1; i<=$tosses; i++ ))
	do
		coin1=$((RANDOM%2+1))
		coin2=$((RANDOM%2+1))
		if [[ $coin1 -eq 1 && $coin2 -eq 1 ]]
		then
			coin[hh]=$((${coin[hh]}+1))
		elif [[ $coin1 -eq 1 && $coin2 -ne 1 ]]
		then
			coin[ht]=$((${coin[ht]}+1))
		elif [[ $coin2 -eq 1 && $coin1 -ne 1 ]]
		then
			coin[th]=$((${coin[th]}+1))
		else
			coin[tt]=$((${coin[tt]}+1))
		fi
	done
		percent_hh=$(((${coin[hh]}*100)/$tosses))
		percent_ht=$(((${coin[ht]}*100)/$tosses))
		percent_th=$(((${coin[th]}*100)/$tosses))
		percent_tt=$(((${coin[tt]}*100)/$tosses))
		echo "Percentage of HH: "$percent_hh
		echo "Percentage of HT: "$percent_ht
		echo "Percentage of TH: "$percent_th
		echo "Percentage of TT: "$percent_tt
elif [[ $coins -eq 3 ]]
then
	coin[hhh]=0
        coin[hht]=0
        coin[hth]=0
        coin[thh]=0
	coin[tht]=0
        coin[tth]=0
        coin[htt]=0
        coin[ttt]=0

	for (( i=1; i<=$tosses; i++ ))
        do
                coin1=$((RANDOM%2+1))
                coin2=$((RANDOM%2+1))
		coin3=$((RANDOM%2+1))
                if [[ $coin1 -eq 1 && $coin2 -eq 1 && $coin3 -eq 1 ]]
                then
                        coin[hhh]=$((${coin[hhh]}+1))
                elif [[ $coin1 -eq 1 && $coin2 -eq 1 && $coin3 -ne 1 ]]
                then
                        coin[hht]=$((${coin[hht]}+1))
                elif [[ $coin1 -eq 1 && $coin2 -ne 1 && $coin3 -eq 1 ]]
                then
                        coin[hth]=$((${coin[hth]}+1))
                elif [[ $coin1 -ne 1 && $coin2 -eq 1 && $coin3 -eq 1 ]]
                then
                        coin[thh]=$((${coin[thh]}+1))
                elif [[ $coin1 -ne 1 && $coin2 -ne 1 && $coin3 -eq 1 ]]
                then
                        coin[tth]=$((${coin[tth]}+1))
                elif [[ $coin1 -ne 1 && $coin2 -eq 1 && $coin3 -ne 1 ]]
                then
                        coin[tht]=$((${coin[tht]}+1))
                elif [[ $coin1 -eq 1 && $coin2 -ne 1 && $coin3 -ne 1 ]]
                then
                        coin[htt]=$((${coin[htt]}+1))
                else
                        coin[ttt]=$((${coin[ttt]}+1))
                fi
        done
		percent_hhh=$(((${coin[hhh]}*100)/$tosses))
                percent_hth=$(((${coin[hth]}*100)/$tosses))
                percent_htt=$(((${coin[htt]}*100)/$tosses))
                percent_hht=$(((${coin[hht]}*100)/$tosses))
		percent_thh=$(((${coin[thh]}*100)/$tosses))
                percent_tth=$(((${coin[tth]}*100)/$tosses))
                percent_tht=$(((${coin[tht]}*100)/$tosses))
                percent_ttt=$(((${coin[ttt]}*100)/$tosses))
                echo "Percentage of HHH: "$percent_hhh
                echo "Percentage of HTH: "$percent_hth
                echo "Percentage of HTT: "$percent_htt
                echo "Percentage of HHT: "$percent_hht
		echo "Percentage of THH: "$percent_thh
                echo "Percentage of TTH: "$percent_tth
                echo "Percentage of THT: "$percent_tht
                echo "Percentage of TTT: "$percent_ttt
fi
