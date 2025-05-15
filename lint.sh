#!/bin/bash
set -euo pipefail

# Function to validate TOML syntax
validate_toml() {
    local file=$1
    echo "Validating $file..."
    
    # Check TOML syntax
    if ! tomlq . < "$file" > /dev/null; then
        echo "Error: Invalid TOML syntax in $file"
        exit 1
    fi
    
    echo "✓ $file is valid"
}

# Main validation loop
for f in ./*.toml; do
    if [ -f "$f" ]; then
        validate_toml "$f"
    fi
done

echo "All TOML files validated successfully!"
