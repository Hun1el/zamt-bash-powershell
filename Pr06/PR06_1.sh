#!/bin/bash

Max() 
{
    num=$1
    max=0
    for (( i=0; i<${num}; i++ ))
    do
        aa=${num:i:1}
        if (( aa > max ))
        then
            max=$aa
        fi
    done
    echo $max
}