#!/bin/bash

get_cpu_info() {
    model_name=$(lscpu | grep "Model name" | awk -F ":" '{print $2}' | awk '{$1=$1}1')
    threads=$(lscpu | grep "Thread(s) per core" | awk -F ":" '{print $2}' | awk '{$1=$1}1')
    cores=$(lscpu | grep "Core(s)" | awk -F ":" '{print $2}' | awk '{$1=$1}1')
    cpu_usage=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
    
    echo "Model Name:" $model_name
    echo "Threads:" $threads
    echo "Cores:" $cores
    echo "CPU Usage:" $cpu_usage%
}

get_cpu_info