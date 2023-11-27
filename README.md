# autorebootoverusagelinux
Auto Reboot Script if CPU/Memory Usage is over 80%

Open Crontab :
<pre>crontab -e</pre>

<pre>*/5 * * * * /path/to/check_usage.sh >/dev/null 2>&1</pre>
