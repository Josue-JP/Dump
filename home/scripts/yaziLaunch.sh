#!/bin/bash
# Launch a terminal and open Yazi file manager

# Check if 'yazi' is installed and executable
if command -v yazi &> /dev/null; then
    # Open a terminal and run 'yazi'
    kitty -- bash -c "yazi; exec bash"
else
    echo "Yazi is not installed or not found in your PATH"
fi

