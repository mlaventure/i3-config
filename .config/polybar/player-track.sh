#!/bin/bash

playerctl -p playerctld metadata --format "{{ artist }}: {{ title }}"
