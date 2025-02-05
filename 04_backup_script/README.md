# Directory Backup Script

## Description
This script automates the process of backing up a directory. It provides two options for naming the backup folder:
1. Based on the current date and time.
2. Based on the directory name and current date and time.

## Features
- Validates the existence of the specified directory.
- Allows retrying the input for invalid directories.
- Automatically creates backups in a dedicated backup folder.

## Usage
Run the script with the following syntax:

```bash
./backup_script.sh [DIRECTORY_NAME] [OPTION]
```

---

## Options

 1. `-d`: Backup with the date format (e.g., `MM_HH_DD_MM_YY-directory_name`).
 2. `-n`: Backup with the name format (e.g., `directory_name-MM_HH_DD_MM_YY`).

---

## Examples


#### Backup with date format:
```bash
bashCopy code./backup_script.sh /path/to/directory -d
```

#### Backup with name format:
```bash
bashCopy code./backup_script.sh /path/to/directory -n
```

---

### Requirements

 - Bash
 - cp command
 - Write permissions for the backup directory.

---

### Output
The backups are stored in the `$HOME/backups` directory by default. The script displays the location of the saved backup after completion.

---

### Notes

The script creates the backup directory automatically if it doesn't exist.
Ensure you have permissions to execute the script and access the target directory.
