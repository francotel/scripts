#!/bin/bash

# colors:
RED='\033[1;31m'
GREEN='\033[1;32m'
WHITE='\033[1;37m'
NC='\033[0m' # No Color

# Sample script written for Part 4 of the RHCE series
# This script will return the following set of system information:
# -Hostname information:
echo -e ${GREEN}"**** HOSTNAME INFORMATION *****"${NC}
hostnamectl
echo ""
# -File system disk space usage:
echo -e ${GREEN}"***** FILE SYSTEM DISK SPACE USAGE *****"${NC}
df -h
echo ""
# -Free and used memory in the system:
echo -e ${GREEN}"***** FREE AND USED MEMORY *****"${NC}
free
echo ""
# -System uptime and load:
echo -e ${GREEN}"***** SYSTEM UPTIME AND LOAD *****"${NC}
uptime
echo ""
# -Logged-in users:
echo -e ${GREEN}"***** CURRENTLY LOGGED-IN USERS *****"${NC}
who
echo ""
# -Top 5 processes as far as memory usage is concerned
echo -e ${GREEN}"***** TOP 5 MEMORY-CONSUMING PROCESSES *****"${NC}
ps -eo %mem,%cpu,comm --sort=-%mem | head -n 6
echo ""
echo -e ${GREEN}"Done."${NC}
