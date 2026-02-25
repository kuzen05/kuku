#!/bin/bash

if [ $# -lt 3 ]; then
    echo "Error: Not enough arguments provided"
    echo "Usage: ./greeter.sh <First Name> <Last Name> <Group>"
    exit 1
fi

echo "Welcome, $1 $2 from group $3!"
