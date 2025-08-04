# Server Performance Stats

A shell script to monitor server performance metrics including CPU, memory, disk usage, and running processes.

## Project URL
https://roadmap.sh/projects/server-stats

## Features

- **CPU Usage** - Real-time CPU utilization
- **Memory Usage** - RAM usage statistics  
- **Disk Usage** - Storage space information
- **Process Monitoring** - Top processes by CPU and memory
- **System Information** - OS version, uptime, load average
- **Security Monitoring** - Failed login attempts

## Usage

### Linux/WSL:
```bash
chmod +x server-stats.sh
./server-stats.sh
```

### Alternative:
```bash
bash server-stats.sh
```

## Requirements

- Linux/Unix environment or WSL on Windows
- Standard system utilities: `top`, `free`, `df`, `ps`

## Sample Output

```
server performance stats
------------------------
Total CPU Usage:
Used: 15.2%
Total Memory Usage:
Used: 1024MB / 4096MB (25.00%)
Total Disk Usage:
Used: 437G / 1.5T (30% used)
...
```

## Installation

1. Clone the repository:
```bash
git clone https://github.com/YOUR_USERNAME/server-performance-stats.git
cd server-performance-stats
```

2. Make executable and run:
```bash
chmod +x server-stats.sh
./server-stats.sh
```