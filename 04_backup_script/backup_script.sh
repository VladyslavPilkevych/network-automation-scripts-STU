#!/bin/bash

show_help() {
  echo "Usage: $0 [OPTIONS] directory_name"
  echo "Options:"
  echo "  --help        Show this help message"
  echo "  -d            Backup in date format (MM_HH_DD_MM_YY-directory_name)"
  echo "  -n            Backup in name format (directory_name-MM_HH_DD_MM_YY)"
  exit 0
}

if [[ $1 == "--help" ]]; then
  show_help
fi

if [[ $# -lt 2 ]]; then
  echo "Error: Not enough arguments. Use --help for help."
  exit 1
fi

backup_dir="$HOME/backups"
backup_name=$1
format=$2
date_format=$(date +%m_%H_%d_%m_%y)
attempts=0

validate_directory() {
  if [[ ! -e "$backup_name" ]]; then
    echo "Error: Directory $backup_name does not exist."
    return 1
  elif [[ ! -d "$backup_name" ]]; then
    echo "Error: $backup_name is not a directory."
    return 1
  fi
  return 0
}

sanitize_name() {
  echo "$1" | sed 's/ /_/g'
}

while ! validate_directory; do
  ((attempts++))
  if [[ $attempts -ge 3 ]]; then
    echo "Error: Maximum number of attempts exceeded."
    exit 1
  fi
  echo "Please try again:"
  read -r backup_name
done

backup_name=$(sanitize_name "$backup_name")

if [[ $format == "-d" ]]; then
  backup_path="${backup_dir}/${date_format}_${backup_name}"
elif [[ $format == "-n" ]]; then
  backup_path="${backup_dir}/${backup_name}_${date_format}"
else
  echo "Invalid parameter. Use -d or -n."
  exit 1
fi

mkdir -p "$backup_path"
cp -r "$backup_name"/* "$backup_path"
echo "Backup saved at $backup_path"
