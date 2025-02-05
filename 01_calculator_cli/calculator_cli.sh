#!/bin/bash

show_help() {
    echo "Usage: $0 [operation] [num1] [num2]"
    echo
    echo "This is a simple calculator script."
    echo
    echo "Arguments:"
    echo "  operation  -- Specify 'add' for addition or 'mul' for multiplication."
    echo "  num1       -- The first number."
    echo "  num2       -- The second number."
    echo
    echo "Options:"
    echo "  --help     -- Display this help message and exit."
}

if [[ $1 == "--help" ]]; then
    show_help
    exit 0
fi

if [[ $# -ne 3 ]]; then
    echo "Error: Invalid number of arguments."
    echo "Run '$0 --help' for usage."
    exit 1
fi

operation=$1
num1=$2
num2=$3

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
