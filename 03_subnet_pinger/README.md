# Subnet Pinger Script

## Description
This script pings all IP addresses in a specified `/24` subnet (first three bytes of an IP address) and logs the successful responses. It is useful for network administrators to quickly identify active hosts in a subnet.

## Features
- Interactive or command-line input for the subnet.
- Pings all hosts in the specified subnet.
- Logs successful responses to a file.
- Provides progress updates during execution.

## Usage
Run the script with the following syntax:

```bash
./subnet_pinger.sh [SUBNET]
```

---

## Examples

#### Ping a subnet interactively:

```bash
bashCopy code./subnet_pinger.sh
```

You'll be prompted to enter the first three bytes of the subnet (e.g., `192.168.1`).


#### Ping a subnet directly:

```bash
bashCopy code./subnet_pinger.sh 192.168.1
```

---

### Requirements

 - Bash
 - ping command
 - awk

---

### Output
The script logs successful pings to a file named `successful_pings.txt` and displays the results at the end.

### Notes

Ensure you have permissions to execute the script.
The script automatically removes the log file after displaying results.
