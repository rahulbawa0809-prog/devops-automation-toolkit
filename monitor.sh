#!/bin/bash

echo "Disk Usage:"
df -h

echo "Memory Usage:"
free -h

echo "Logged in Users:"
who

echo "Running Processes:"
top -b -n 1 | head -10
