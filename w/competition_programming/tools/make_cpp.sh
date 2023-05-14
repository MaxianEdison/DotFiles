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

#define DEBUG_PRINT(fmt, ...) \\
    do { \\
        fprintf(stderr, "[%s:%d] " fmt "\n", __FILE__, __LINE__, ##__VA_ARGS__); \\
    } while (0)

#define ASSERT(condition, fmt, ...) \\
    do { \\
        if (!(condition)) { \\
            fprintf(stderr, "[%s:%d] Assertion failed: " fmt "\n", __FILE__, __LINE__, ##__VA_ARGS__); \\
            exit(EXIT_FAILURE); \\
        } \\
    } while (0)

using namespace std;

int main() {
    cout << "Hello, World!" << endl;
    return 0;
}
EOF
done
