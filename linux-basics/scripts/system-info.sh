#!/bin/bash

REPORT_FILE="logs/system-report-$(date +%Y-%m-%d-%H-%M-%S).txt"

echo "Generating system report..."

{
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
} > "$REPORT_FILE"

echo "Report saved to: $REPORT_FILE"