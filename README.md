# System Performance Checker

A simple Bash script for monitoring system performance by calculating CPU, Memory, and Disk usage.

## Features

* Monitor CPU usage
* Monitor Memory usage
* Monitor Disk usage
* Display system health status using configurable thresholds
* Lightweight and easy to run on any Linux machine

## Requirements

* Linux
* Bash
* `bc`
* `awk`
* `top`
* `df`
* `free`

## Installation

Clone the repository:

```bash
git clone https://github.com/asomaarooufiniyaa/Checking-Performance.git
cd Checking-Performance
```

Make the script executable:

```bash
chmod +x system-performance.sh
```

Run the script:

```bash
./system-performance.sh
```

## Example Output

```text
==============================
 SYSTEM PERFORMANCE CHECK
==============================

Calculating CPU...
CPU Usage: 12.5%
CPU is OK ✅

------------------------------
Calculating Memory...
Memory Usage: 43.8%
Memory is OK ✅

------------------------------
Calculating Disk...
Disk Usage: 55%
Disk is OK ✅
```

## Technologies Used

* Bash Scripting
* awk
* bc
* Linux System Utilities (`top`, `free`, `df`)

## Future Improvements

* Colored output
* Logging to a file
* Email or Telegram alerts
* Configurable thresholds
* Export metrics for Prometheus
* Docker support

## Author

**Aso Maarooufiniyaa**

GitHub: https://github.com/asomaarooufiniyaa
