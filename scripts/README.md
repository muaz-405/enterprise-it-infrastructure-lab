# Scripts

| Script | Runs on | Purpose |
|---|---|---|
| `monitor_sla.sh` | Ubuntu ticket-server (cron, every 5 minutes) | Counts `SLA_BREACH` events in `/var/log/osticket_events.log` and prints a warning |
| `Create-ADStructure.ps1` | Windows Server 2022 DC | Creates the department OUs and bulk-creates user accounts — **to be added** |

## Exporting the scripts from the lab VMs

**PowerShell script (WinServer-DC):** copy the `.ps1` file you ran from the server (e.g. from `C:\Scripts\`) into this folder.

**Cron entry (ticket-server):**
```bash
sudo crontab -l          # shows the */5 line that runs monitor_sla.sh
sudo cat /root/monitor_sla.sh
```
