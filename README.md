# autorebootoverusage
Auto Reboot Script if CPU/Memory Usage is over 80%

crontab -e
*/5 * * * * /path/to/check_usage.sh >/dev/null 2>&1
