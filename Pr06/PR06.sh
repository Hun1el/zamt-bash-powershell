#!/bin/bash

source ./PR06_1.sh

#Задание 1
echo "Задание 1."
echo "Введите четырехзначное число:"
read number
max=$(Max $number)
echo "Наибольшая цифра в числе: $max"
