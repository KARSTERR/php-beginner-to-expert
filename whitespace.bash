#!/bin/bash

# Function to recursively rename files and directories
rename_whitespace() {
    for item in "$1"/*; do
        if [ -e "$item" ]; then
            # Remove whitespaces in the item's name
            new_item=$(echo "$item" | sed 's/ //g')
            if [ "$item" != "$new_item" ]; then
                mv "$item" "$new_item"
            fi
            
            # If the item is a directory, process its contents recursively
            if [ -d "$new_item" ]; then
                rename_whitespace "$new_item"
            fi
        fi
    done
}

# Start renaming from the current directory
rename_whitespace "$(pwd)"

echo "Whitespace removal complete."

