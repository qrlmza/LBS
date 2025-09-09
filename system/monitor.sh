#!/bin/bash
# monitor.sh - Show system resource usage

echo "===== System Monitor ====="

# CPU usage
echo "🔸 CPU Load:"
uptime | awk -F'load average:' '{ print $2 }'

# RAM usage
echo "🔸 RAM Usage:"
free -h | awk '/Mem:/ {print $3 " / " $2}'

# Disk usage
echo "🔸 Disk Usage:"
df -h --total | grep total | awk '{print $3 " / " $2 " (" $5 ")"}'

# Uptime
echo "🔸 Uptime:"
uptime -p
