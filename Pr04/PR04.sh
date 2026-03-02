#!/bin/bash

BLUE='\033[1;34m'
RED='\033[1;31m'
RESET='\033[0m'

echo "************ Задание 1 *********************"

echo "************ Задание 2 *********************"
data=$(tail -n +2 supplier_k_import.csv)
while read str
do
    company=$(echo "$str" | cut -d ';' -f1)
    type=$(echo "$str" | cut -d ';' -f2)
    rating=$(echo "$str" | cut -d ';' -f4)

    if [[ "$type" == " ООО" && "$rating" -gt 70 ]]; then
        echo "Компания: $company, Тип: $type, Рейтинг: $rating"
    fi
done <<< $data
echo "************ Задание 3 *********************"
declare -a char=( {0..9} {a..z} )
while true
do
    pass=""
    for (( i = 0; i < 64; i++ )); do
        rn=$(( RANDOM % 36 ))
        pass+="${char[$rn]}"
    done
    echo -e "${BLUE}$pass${RESET}"
    break
done