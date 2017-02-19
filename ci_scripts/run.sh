#!/bin/bash

set -e

# This would ideally be `timeout --preserve-status` but the version of coreutils 
# that the version of ubuntu that travis uses is out of date.
function keepup () {
    START_TIME=$(date +%s)
    "${@:2}" &
    PID=$!
    sleep $1 
    ps -o pid= -p $PID || exit 1
    kill $PID
}

run/factorio/bin/x64/factorio --create run/test
keepup 5s run/factorio/bin/x64/factorio --start-server run/test.zip