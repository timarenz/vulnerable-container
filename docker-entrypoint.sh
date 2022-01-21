#!/bin/sh

# Lacework Agent: configure and start the data collector
if [ ${LaceworkAgent} = "true" ]; then
    /var/lib/lacework-backup/lacework-sidecar.sh &
fi

python3 /app/app.py