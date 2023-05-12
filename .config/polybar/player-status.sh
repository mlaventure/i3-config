#!/bin/bash

status=$(playerctl --player=playerctld status 2>/dev/null)
case "${status}" in
    Playing)
        echo ""
        ;;
    Paused)
        echo ""
        ;;
    *)
        echo "Not running"
        ;;
esac
