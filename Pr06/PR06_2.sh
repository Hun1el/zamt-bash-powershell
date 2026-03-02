#!/bin/bash

Dlina() 
{
    rad=$1
    height=$2
    pi=3.14

    perone=$(echo "2 * $pi * $rad" | bc)
    pertwo=$(echo "$pi * ($rad ^ 2)" | bc)
    perthree=$(echo "$pi * ($rad ^ 2) * $height" | bc)

    echo $perone $pertwo $perthree
}