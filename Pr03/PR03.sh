#!/bin/bash

echo "************ Задание 1 *********************"
RED='\e[1;31m'
BLUE='\e[34m'
GREEN='\033[1;32m'
YELLOW='\033[0;33m'
RESET='\033[0m'
num=$RANDOM
echo "Сгенерировано число: $num"

if (( num % 2 == 0 )); then
    echo -e "${RED}Число $num - четное${RESET}"
else
    echo -e "${BLUE}Число $num - нечетное${RESET}"
fi

echo "************ Задание 2 *********************"
if ! [ -f /etc/passwd ]; then
    mkpasswd -l > /etc/passwd
    echo "Создан файл /etc/passwd"
else
    echo -e "${GREEN}Файл /etc/passwd уже существует${RESET}"
fi
if ! [ -f /etc/group ]; then
    mkgroup -l > /etc/group
    echo "Создан файл /etc/group"
else
    echo -e "${GREEN}Файл /etc/group уже существует${RESET}"
fi
echo -e "Последняя строка /etc/passwd: ${YELLOW}$(tail -n 1 /etc/passwd)${RESET}"
echo -e "Последняя строка /etc/group: ${YELLOW}$(tail -n 1 /etc/group)${RESET}"

echo "************ Задание 3 *********************"
if ! [ -d Folder1 ]; then
    mkdir Folder1
    echo "Создана папка Folder1"
fi
touch Folder1/file{0..9}.exe
chmod ugo+x Folder1/*.exe
echo "Файлы созданы"
echo "************ Задание 4 *********************"
count=$(ls Folder1 | wc -l)
if (( count > 7 )); then
    if [[ -f Folder1/file0.exe && -x Folder1/file0.exe ]]; then
        echo -e "${BLUE}Файл исполняемый и существует${RESET}"
    else
        echo -e "${RED}ОТСУТСТВУЕТ${RESET}"
    fi
fi