#!/bin/bash

while [ -n "$1" ]
do
  case "$1" in
    -i)
        if [[ -n "$2" && "$2" != -* ]]
        then
            input="$2"
            shift
        else
            read -p "Введите имя файла(input): " input
        fi
        ;;
    -o)
        if [[ -n "$2" && "$2" != -* ]]
        then
            output="$2"
            shift
        else
            read -p "Введите имя файла(output): " output
        fi
        ;;
    -e)
        if [[ -n "$2" && "$2" != -* ]]
        then
            error="$2"
            shift
        else
            read -p "Введите имя файла(error): " error
        fi
        ;;
    *)
        echo "Неизвестный ключ '$1'. Используйте -i, -o, -e."
        exit 1
        ;;
  esac
  shift
done

if [ -z "$input" ]
then
    echo "Входной файл не указан"
    exit 1
fi

if [ -z "$output" ]
then
    read -p "Введите имя файла для вывода: " output
fi

if [ -z "$error" ]
then
    read -p "Введите имя файла для вывода ошибок: " error
fi

if [ ! -f "$input" ]
then
    echo "Входной файл '$input' не существует"
    exit 1
fi


count=0
while read str || [ -n "$str" ]
do
    ((count++))
    str=${str//[$'\t\n\r ']/""}

    if [[ -z "$str" ]]
    then
        echo "$count" >> "$error"
    else
        echo "$str $count" >> "$output"
    fi
done < "$input"
