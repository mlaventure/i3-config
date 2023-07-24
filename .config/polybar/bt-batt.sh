#!/bin/sh

pct=$(bluetoothctl info 88:C9:E8:F9:01:A6 2>/dev/null | awk '/Battery Percentage/ { print $4 }' | tr -d '()')

if [ -n "${pct}" ]; then
    echo "🎧 ${pct}%"
else
    echo ""
fi
