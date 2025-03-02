#!/bin/bash

# Define paths
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_PROFILES_DIR="$SCRIPT_DIR/../profiles"
MAC_KARABINER_CONFIG="$HOME/.config/karabiner/karabiner.json"
BACKUP_PATH="$PROJECT_PROFILES_DIR/karabiner.json"

# Ensure profiles directory exists
mkdir -p "$PROJECT_PROFILES_DIR"

# Check if Karabiner config exists on the system
if [ -f "$MAC_KARABINER_CONFIG" ]; then
    echo "Backing up current Karabiner settings..."
    cp "$MAC_KARABINER_CONFIG" "$BACKUP_PATH"
    echo "Backup saved to: $BACKUP_PATH 🎉"
else
    echo "No existing Karabiner config found at $MAC_KARABINER_CONFIG ❌"
    exit 1
fi
