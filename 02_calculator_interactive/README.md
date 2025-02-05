# Interactive Bash Calculator

## Overview
This script is a simple interactive calculator written in Bash. It allows users to perform basic arithmetic operations (addition and multiplication) by entering the required operation and numbers during runtime.

---

## Features
- Fully interactive: Prompts the user for input.
- Supports two operations:
    - **Addition** (`add`)
    - **Multiplication** (`mul`)
- Provides clear error messages for invalid inputs.
- Lightweight and easy to use.

---

## Usage

### Running the Script
1. Ensure the script has executable permissions:
    ```bash
    chmod +x calculator_interactive.sh
    ```
2. Run the script:
    ```bash
   ./calculator_interactive.sh
   ```
---

### Interaction Steps

1. The script will prompt you to enter the arithmetic operation:

2. 
   - Type `add` for addition.
   - Type `mul` for multiplication.

3. 
   - Enter the first number when prompted.
   - Enter the second number when prompted.
   -  The script will calculate and display the result.

---

## Example

```bash
$ ./calculator_interactive.sh
Enter the operation (add or mul):
add
Enter the first number:
5
Enter the second number:
10
Result of addition: 5 + 10 = 15
```
---
### Options

`--help`: Display the help message with usage instructions.
