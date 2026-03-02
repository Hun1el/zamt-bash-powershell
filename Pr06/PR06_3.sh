# !/bin/bash

Radius() 
{ 
    pereone=$1
    peretwo=$(echo "sqrt($pereone)" | bc)
    perethree=$(echo "$peretwo / 2" | bc)

    echo $perethree
}