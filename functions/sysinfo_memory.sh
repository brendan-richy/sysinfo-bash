#!/bin/bash

get_memory_info() {
    top_output=$(top -b -o %MEM -n 1 | head -n 10 | tail -n 3 | awk '{print $12, $10}')

    mem_capacity=$(top -n 1| grep "MiB Mem" | awk '{print int($4)}')
    mem_usage=$(top -n 1| grep "MiB Mem" | awk '{print int($8)}')

    echo "Memory Capacity: ${mem_capacity}mb"
    echo "Memory Usage: ${mem_usage}mb"
    
    read -p "Would you like to display top 3 users of memory? (y/n): " answer
    if [[ $answer == "Y" || $answer == "y" ]]; then
        echo "$top_output" | awk '{print $1":", $2"%"}'
    fi
}

get_memory_info
