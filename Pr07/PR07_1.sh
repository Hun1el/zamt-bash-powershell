#!/bin/bash

fileinput="access.log"
fileoutput="out1.txt"

awk '
{
    if ($9 == 404) 
    {
        ip = $1
        date = substr($4, 2, 11)
        path = $7
        code = $9
        byte = $10
        
        print ip, date, path, code, byte
    }
}' "$fileinput" > "$fileoutput"
