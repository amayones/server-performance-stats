echo "server performance stats"
echo "------------------------"

echo "Total CPU Usage:"
top -bn1 | grep "Cpu(s)" | awk '{print "Used: " 100 - $8 "%"}'

echo "Total Memory Usage:"
free -m | awk 'NR==2{print "Used: %sMB / %sMB (%.2f%%)\n", $3, $2, $3*100/$2}'

echo "Total Disk Usage:"
df -h --total | grep total | awk '{print "Used: " $3 " / " $2 " (" $5 " used) "}'

echo "Top 5 Processes by CPU Usage:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6

echo "Top 5 Processes by Memory Usage:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6

echo "------------------------"

echo "OS Version: $(grep PRETTY_NAME /etc/os-release | cut -d= -f2)"
echo "Uptime: $(uptime -p)"
echo "Load Average: $(uptime | awk -F'average:' '{print $2}')"
echo "Logged In Users: $(who | wc -l)"

echo "------------------------"

echo "Failed Login Attempts: "
lastb | head -n 5 2>/dev/null || echo"No failed login log found."