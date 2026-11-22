#!/bin/bash
# SLA monitor for the osTicket helpdesk (Ubuntu ticket-server)
# Runs every 5 minutes from root's crontab, e.g.:
#   */5 * * * * /root/monitor_sla.sh >> /var/log/sla_monitor.log 2>&1
# Counts SLA-breach events in the osTicket event log and prints a warning.

LOG_FILE="/var/log/osticket_events.log"

if [ ! -f "$LOG_FILE" ]; then
    sudo touch "$LOG_FILE"
fi

ALERT_COUNT=$(grep -c "SLA_BREACH" "$LOG_FILE")

if [ "$ALERT_COUNT" -gt 0 ]; then
    echo "WARNING THERE $ALERT_COUNT tickets breaching SLA thresholds!"
fi
