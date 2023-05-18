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

#ifdef DEBUG
#define debug(fmt, ...) \\
    fprintf(stderr, "[%s:%d] " fmt "\n", __FILE__, __LINE__, ##__VA_ARGS__)
#else
#define debug(fmt, ...) \\
    do {} while (0)
#endif

#define ASSERT_IMPL(cond, ...) \\
    do { \\
        if (!(cond)) { \\
            fprintf(stderr, "[%s:%d] Assertion failed: ", __FILE__, __LINE__); \\
            fprintf(stderr, __VA_ARGS__); \\
            fprintf(stderr, "\n"); \\
            exit(EXIT_FAILURE); \\
        } \\
    } while (0)

#define ASSERT(cond, ...) \\
    ASSERT_IMPL(cond, __VA_ARGS__)

#define ASSERT_MSG(msg) \\
    ASSERT_IMPL(false, msg)

int main() {
    cout << "Hello world!" << endl;
    return 0;
}
EOF
done
