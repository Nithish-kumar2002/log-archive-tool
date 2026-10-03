#!/usr/bin/env bash

SOURCE_DIR="$1"

if [[ -z "$SOURCE_DIR" ]]; then
	echo "Usage: $0 <log-directory>"
	exit 1
fi

if [[ ! -d "$SOURCE_DIR" ]]; then
	echo "Error: Directory does not exit"
	exit 1
fi

mkdir -p archives

TIMESTAMP=$(date +'%Y-%m-%d_%H%M%S')


SOURCE_NAME=$(basename "$SOURCE_DIR")
ARCHIVE_FILE="archives/${SOURCE_NAME}_${TIMESTAMP}.tar.gz"

tar -czf "$ARCHIVE_FILE" "$SOURCE_DIR"

if [[ $? -eq 0 ]]; then
    echo "Archive created successfully!"
    echo "File: $ARCHIVE_FILE"
else
    echo "Error: Archive creation failed"
    exit 1
fi
