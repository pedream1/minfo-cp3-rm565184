#!/bin/bash
[ "$1" = hostname ] && { hostname; exit; }
[ "$1" = disk ] && { df -h /; exit; }
[ "$1" = uptime ] && { uptime -p; exit; }
[ "$1" = all ] && { hostname; df -h /; uptime; exit; }

echo "Use $0 {hostname |uptime | disk | all"}
exit 1