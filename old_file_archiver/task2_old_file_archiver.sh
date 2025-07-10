#!/bin/bash

# Old File Archiver
# Author: coderhisham
# Task: Archive files older than 30 days from target directory to archive directory
# Log File: ~/file_archiver.log

# ----------------- Configuration ----------------- #
TARGET_DIR=${1:-"$HOME/target"}           # Default target directory
ARCHIVE_DIR=${2:-"$HOME/archive"}         # Default archive directory
LOG_FILE="$HOME/file_archiver.log"

# Check if target directory exists
if [ ! -d "$TARGET_DIR" ]; then
    echo "Target directory '$TARGET_DIR' does not exist. Exiting."
    exit 1
fi

mkdir -p "$ARCHIVE_DIR"

# Archive Old Files
DATE=$(date '+%Y-%m-%d %H:%M:%S')
echo "$DATE - Starting archive from $TARGET_DIR to $ARCHIVE_DIR" >> "$LOG_FILE"

find "$TARGET_DIR" -type f -mtime +30 | while read -r file; do
    REL_PATH="${file#$TARGET_DIR/}"  # Relative path from target root
    DEST_PATH="$ARCHIVE_DIR/$REL_PATH"

    # Create destination directory if not exist
    mkdir -p "$(dirname "$DEST_PATH")"

    # Move the file
    mv "$file" "$DEST_PATH"

    # Log the move
    echo "$DATE - Moved: $file --> $DEST_PATH" >> "$LOG_FILE"
done
