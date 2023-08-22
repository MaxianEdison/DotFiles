#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "Please provide at least one file name as an argument."
    exit 1
fi

timestamp=$(date +"%Y-%m-%d %H:%M:%S")

for filename in "$@"
do
    echo "[+] Creating file: $filename.c"
    cat > $filename.c << EOF
/*
*    @Author:   MaximilianEdison (MaxianEdison)
*    @Date:     $timestamp
*/

#include <stdio.h>

int main(void) {
    
    return 0;
}
EOF
done
