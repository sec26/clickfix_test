#!/bin/bash

# Original script tried to use xdg-open (Linux only).
# This version works on macOS and Linux.

URL="https://www.home.sandvik/"

# Detect OS and open URL in default browser
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    echo "[INFO] Opening $URL in default browser (macOS)..."
    open "$URL"
elif command -v xdg-open >/dev/null 2>&1; then
    # Linux with xdg-open
    echo "[INFO] Opening $URL in default browser (Linux)..."
    xdg-open "$URL"
else
    echo "[WARNING] No suitable command found to open URL."
    echo "Please manually visit: $URL"
fi
