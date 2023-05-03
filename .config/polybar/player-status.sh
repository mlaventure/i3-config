#!/bin/bash

status=$(playerctl --player=playerctld status)
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
