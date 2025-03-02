# Karabiner Elements Configuration Repository

This repository is used to manage custom Karabiner Elements configurations in a structured way. It provides scripts to install and back up configuration files, making it easier to apply and maintain custom key mappings.

## Folder Structure
```
karabiner-config/
│── profiles/
│   └── karabiner.json  # Stores the custom Karabiner Elements configuration
│── scripts/
│   ├── install.sh      # Applies the custom configuration
│   ├── backup.sh       # Backs up the current configuration
│── README.md
```

## Scripts
### 1. `install.sh` (Applying Custom Configuration)
This script copies the custom configuration from `profiles/karabiner.json` to the Karabiner Elements system configuration directory.

#### **Usage**
1. Open a terminal and navigate to the repository:
   ```sh
   cd /path/to/karabiner-config/scripts
   ```
2. Make sure the script is executable:
   ```sh
   chmod +x install.sh
   ```
3. Run the script:
   ```sh
   ./install.sh
   ```
4. Restart Karabiner Elements for the changes to take effect.

---
### 2. `backup.sh` (Backing Up Current Configuration)
This script copies the existing Karabiner Elements configuration from your system to the repository’s `profiles/karabiner.json`, allowing you to store and track changes.

#### **Usage**
1. Open a terminal and navigate to the repository:
   ```sh
   cd /path/to/karabiner-config/scripts
   ```
2. Make sure the script is executable:
   ```sh
   chmod +x backup.sh
   ```
3. Run the script:
   ```sh
   ./backup.sh
   ```
4. Your current Karabiner configuration will be saved in `profiles/karabiner.json`.

---
## Notes
- Ensure Karabiner Elements is installed before running these scripts.
- Running `install.sh` will overwrite your existing Karabiner configuration.
- You may need to restart Karabiner Elements after applying new settings.
- Use version control (Git) to track changes to your configuration over time.

---
## Contribution
Feel free to modify the `karabiner.json` file to add or update key mappings. If you make improvements, consider committing your changes for future reference.

