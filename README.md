# Bash Automation Scripts

## Overview
This repository contains a collection of Bash scripts designed to simplify common tasks such as network management, backups, and basic arithmetic operations. Each script is lightweight, easy to use, and demonstrates core Bash scripting concepts.

---

## Scripts

### 1. Command-Line Calculator

**Description**: Performs addition or multiplication using command-line arguments.

**Usage**:
```bash
bashCopy code./calculator_cli.sh [operation] [num1] [num2]
```

**Example**:
```bash
bashCopy code./calculator_cli.sh add 5 10
```

---

### 2. Interactive Calculator

**Description**: Prompts the user to input an operation and numbers for addition or multiplication.

**Usage**:
```bash
bashCopy code./calculator_interactive.sh
```

---

### 3. Subnet Pinger

**Description:** Pings all IP addresses in a specified `/24` subnet and logs active hosts.

**Usage:**
```bash
./subnet_pinger.sh [SUBNET]
```
  
**Example**:
```bash
bashCopy code./subnet_pinger.sh 192.168.1
```

---

### 4. Directory Backup Script

**Description**: Automates directory backups with customizable naming formats.

**Usage**:
```bash
bashCopy code./backup_script.sh [DIRECTORY_NAME] [OPTION]
```

**Options**:
 - `-d`: Backup with date format.
 - `-n`: Backup with name format.

---

### Requirements

 - Bash shell (Linux/MacOS/WSL)
 - Standard Linux utilities (ping, awk, cp, etc.)
