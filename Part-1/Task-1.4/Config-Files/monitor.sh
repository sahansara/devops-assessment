#!/bin/bash
LOGFILE="/opt/webapp/logs/monitor.log"
DATE=$(date)

echo "--- Monitoring Report: $DATE ---" >> $LOGFILE

# Check Webapp Service
if systemctl is-active --quiet webapp; then
    echo "Webapp Service: RUNNING" >> $LOGFILE
else
    echo "Webapp Service: STOPPED" >> $LOGFILE
fi

# Check Nginx (Port 80)
if nc -z localhost 80; then
    echo "Nginx Port 80: OPEN" >> $LOGFILE
else
    echo "Nginx Port 80: CLOSED" >> $LOGFILE
fi
