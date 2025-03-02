#!/bin/bash

# Define the folder structure
folders=(
    "profiles"
    "rules"
    "scripts"
    "docs"
)

# Create folders
echo "📁 Creating folders..."
for folder in "${folders[@]}"; do
    mkdir -p "$folder"
    echo "✅ Created $folder/"
done

# Add default content to README.md
echo "# Karabiner Elements Settings" > README.md
echo "This repository contains my custom keyboard mappings and configurations for Karabiner Elements." >> README.md

# Add default content to .gitignore
echo "# Ignore Karabiner logs" > .gitignore
echo "*.log" >> .gitignore

echo "🚀 Setup complete! Your Karabiner Elements settings repo is ready."
