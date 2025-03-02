#!/bin/bash

# Define paths
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROFILE_PATH="$SCRIPT_DIR/../profiles/karabiner.json"
KARABINER_CONFIG_DIR="$HOME/.config/karabiner"
KARABINER_CONFIG_FILE="$KARABINER_CONFIG_DIR/karabiner.json"
BACKUP_PATH="$KARABINER_CONFIG_DIR/karabiner_backup.json"

# Ensure Karabiner config directory exists
mkdir -p "$KARABINER_CONFIG_DIR"

# Backup existing configuration if it exists
if [ -f "$KARABINER_CONFIG_FILE" ]; then
    echo "Backing up existing Karabiner settings..."
    cp "$KARABINER_CONFIG_FILE" "$BACKUP_PATH"
    echo "Backup saved at: $BACKUP_PATH"
fi

# Apply the new configuration by creating a symbolic link
echo "Applying new Karabiner settings..."
ln -sf "$PROFILE_PATH" "$KARABINER_CONFIG_FILE"

# Confirm success
if [ $? -eq 0 ]; then
    echo "Karabiner settings applied successfully! 🎉"
else
    echo "Failed to apply settings. ❌"
fi
