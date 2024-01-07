# autorebootoverusagelinux
Auto Reboot server if CPU/Memory Usage is over 80%
it will check every 5 minutes

Open Crontab :
<pre>crontab -e</pre>

<pre>*/5 * * * * /path/to/check_usage.sh >/dev/null 2>&1</pre>
