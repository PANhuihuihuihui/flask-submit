#!/bin/bash
source myflask/bin/activate

while true; do
    flask run --host 0.0.0.0
    if [["$?" == "0"]]; then
        break
    fi
    echo deploy failed
    sleep 5
done
