#!/bin/bash

# Function to check CPU and memory usage
check_usage() {
    # Get CPU usage percentage
    cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | awk -F. '{print $1}')

    # Get memory usage percentage
    mem_usage=$(free | awk '/Mem/{printf("%.2f"), $3/$2*100}')

    echo "CPU Usage: $cpu_usage%"
    echo "Memory Usage: $mem_usage%"

    # Check if CPU or memory usage is above 80%
    if [ "$cpu_usage" -gt 80 ] || [ "$(echo "$mem_usage > 80" | bc -l)" -eq 1 ]; then
        echo "CPU or Memory usage is above 80%."

        # Reboot the server
        echo "Rebooting the server..."
        sudo reboot
    else
        echo "CPU and Memory usage are within limits."
    fi
}

# Execute the function
check_usage
