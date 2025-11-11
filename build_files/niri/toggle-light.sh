#!/usr/bin/env bash

# Get current color-scheme preference
current=$(gsettings get org.gnome.desktop.interface color-scheme)

if [[ "$current" == "'prefer-dark'" ]]; then
    echo "Switching to Light Mode..."
    gsettings set org.gnome.desktop.interface color-scheme 'default'
else
    echo "Switching to Dark Mode..."
    gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
fi
