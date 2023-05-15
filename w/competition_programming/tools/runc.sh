#!/bin/bash

c_file="$1"
executable="exec"
input_file="$2"

# Check if a file name is provided
if [ -z "$c_file" ]; then
    echo "Please provide the C++ file name as a command-line argument."
    exit 1
fi

# Compile the C++ file
compile_output=$(cc -o "$executable" "$cpp_file" 2>&1)
if [ $? -ne 0 ]; then
    echo "Compilation failed:"
    echo "$compile_output"
    exit 1
fi

# Run the compiled program
start_time=$(date +%s.%N)
output=$(./"$executable" < "$input_file")
end_time=$(date +%s.%N)

# Calculate the execution time
execution_time=$(echo "$end_time - $start_time" | bc)

# Print the output and execution time
echo "Output:"
echo "$output"
echo "Execution time: $execution_time seconds"

# Clean up the executable file
rm "$executable"
