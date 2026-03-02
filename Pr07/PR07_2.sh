#!/bin/bash

fileinput="access.log"
fileoutput="out2.txt"

grep ".jpg" "$fileinput" | awk '
    $9 == 200 { size[$1] += $10 }
    END {
        for (ip in size) 
        {
            print ip, size[ip]
        }
    }
' | sort | column -t > "$fileoutput"