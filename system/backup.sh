#!/bin/bash
# backup.sh - Simple backup using rsync

SOURCE="$1"
DEST="$2"

if [ -z "$SOURCE" ] || [ -z "$DEST" ]; then
    echo "Usage: $0 <source_dir> <backup_dir>"
    exit 1
fi

rsync -avh --progress "$SOURCE" "$DEST"

echo "✅ ⇒ Backup from $SOURCE to $DEST completed!"
