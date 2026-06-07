#!/bin/bash

echo "=== System info ==="
echo "User: $(whoami)"
echo "Date: $(date)"
echo "Current directory: $(pwd)"
echo "Kernel: $(uname -r)"

echo ""
echo "=== Disk usage ==="
df -h

echo ""
echo "=== Memory usage ==="
free -h