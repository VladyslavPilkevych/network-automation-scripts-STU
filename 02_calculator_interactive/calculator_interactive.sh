#!/bin/bash

show_help() {
    echo "Usage: $0"
    echo
    echo "This is a simple interactive calculator script."
    echo "You will be prompted to enter the operation and numbers."
    echo
    echo "Operations:"
    echo "  add  -- for addition."
    echo "  mul  -- for multiplication."
    echo
    echo "Options:"
    echo "  --help  -- Display this help message and exit."
}

if [[ $1 == "--help" ]]; then
    show_help
    exit 0
fi

echo "Enter the operation (add or mul):"
read operation

echo "Enter the first number:"
read num1

echo "Enter the second number:"
read num2

case $operation in
    add)
        result=$[$num1 + $num2]
        echo "Result of addition: $num1 + $num2 = $result"
        ;;
    mul)
        result=$(($num1 * $num2))
        echo "Result of multiplication: $num1 * $num2 = $result"
        ;;
    *)
        echo "Error: Invalid operation. Use 'add' or 'mul'."
        exit 1
        ;;
esac
