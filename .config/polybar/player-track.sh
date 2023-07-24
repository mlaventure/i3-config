#!/bin/bash

if [ -n "$(playerctl --list-all 2>/dev/null)" ]; then
	playerctl -p playerctld metadata --format "{{ artist }}: {{ trunc(title,25) }} ({{ duration(position) }} / {{ duration(mpris:length) }})"
fi
