#!/bin/bash
source myflask/bin/activate

while true; do
    gunicorn app:app -b 0.0.0.0:5000
    if [["$?" == "0"]]; then
        break
    fi
    echo deploy failed
    sleep 5
done
