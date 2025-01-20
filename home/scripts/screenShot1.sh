#!/bin/bash

#
#TO USE THIS COMMAND DOWNLOAD THE FOLLOWING ITEMS
#sudo pacman -S --needed grim slurp libnotify
#

# Generate a timestamp for unique filenames
timestamp=$(date +"%H_%M_%S")

# Capture a selected area with grim & slurp
screenshot_path=~/Pictures/ScreenShot/$timestamp.png
grim -g "$(slurp)" "$screenshot_path"

# Check if the screenshot was saved successfully
if [ -f "$screenshot_path" ]; then
    # Notify the user that the screenshot was saved
    notify-send "Screenshot saved" "The screenshot has been saved to $screenshot_path"
else
    # Notify the user of an error
    notify-send "ERROR" "Failed to save the screenshot."
fi

