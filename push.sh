#!/bin/sh

PUSH_URL="${PUSH_URL:?PUSH_URL not set}"
INTERVAL="${INTERVAL:-30}"

while true; do
    curl -k -s -o /dev/null "$PUSH_URL"
    echo "Pushed heartbeat to $PUSH_URL"
    sleep "$INTERVAL"
done
