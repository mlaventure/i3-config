#!/bin/bash

if [ -n "$(playerctl --list-all 2>/dev/null)" ]; then
    playerctl -p playerctld metadata --format "{{ artist }}: {{ title }}"
fi
