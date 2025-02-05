# Simple Bash Calculators

## Overview
This repository contains two simple Bash scripts for performing basic arithmetic operations (addition and multiplication). The scripts are designed to demonstrate basic Bash scripting concepts such as user input, argument handling, and arithmetic operations.

---

## Scripts

### 1. Command-Line Calculator: `calculator_cli.sh`

#### Description
This script performs arithmetic operations (addition or multiplication) based on command-line arguments. It is ideal for quick calculations without user interaction.

#### Usage
Run the script with the following syntax:

```bash
./calculator_cli.sh [operation] [num1] [num2]
```

### Arguments

 - operation: Specify the operation to perform (add for addition or mul for multiplication).
 - num1: The first number (integer).
 - num2: The second number (integer).

---

## Examples


### Addition:
```bash
bashCopy code./calculator_cli.sh add 5 10
```

#### Output:
`Result of addition: 5 + 10 = 15`

### Multiplication:
```bash
bashCopy code./calculator_cli.sh mul 3 7
```

#### Output:
`Result of multiplication: 3 * 7 = 21`

---

### Options

`--help`: Display the help message.