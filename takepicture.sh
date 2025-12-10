#!/bin/sh

# Parse command-line options
while getopts "s:g:" opt; do
    case "$opt" in
        s) shutter="$OPTARG" ;;
        g) gain="$OPTARG" ;;
        *)
            echo "Usage: $0 <filename-prefix> -s <shutter_speed> -g <gain>"
            exit 1
            ;;
    esac
done

#Remove getopts after using - good practice.
shift $((OPTIND - 1))

# Remaining argument is the filename prefix, e.g. "image"
filename="$1"

# Validate
if [ -z "$shutter" ] || [ -z "$gain" ] || [ -z "$filename" ]; then
    echo "Usage: $0 -s <shutter_speed> -g <gain> <filename>"
    exit 1
fi

# Automatic timestamped filename
date=$(date --iso-8601)

# Capture image
rpicam-still --raw \
    -o "${filename}_${date}.jpg" \
    --gain "$gain" \
    --shutter "$shutter" \
    -n --immediate

# List files and open result
ls -rtlh
open "${filename}_${date}.jpg"

