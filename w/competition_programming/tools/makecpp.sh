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

typedef unsigned long long ull;
typedef unsigned long ul;
typedef long long ll;
typedef long l;

int main() {
#if 0
    freopen("", "r", stdin);
    freopen("", "w", stdout);
#endif
     
    return 0;
}
EOF
done
