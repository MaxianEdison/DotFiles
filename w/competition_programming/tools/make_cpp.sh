#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "Please provide at least one file name as an argument."
    exit 1
fi

timestamp=$(date +"%Y-%m-%d %H:%M:%S")

for filename in "$@"
do
    echo "[+] Creating file: $filename.cpp"
    cat > $filename.cpp << EOF
/*
*    @Author:   MaximilianEdison (MaxianEdison)
*    @Date:     $timestamp
*/

#include <bits/stdc++.h>

using namespace std;

int main() {
    cout << "Hello, World!" << endl;
    return 0;
}
EOF
done
