#!/usr/bin/env sh
# Generate Linux Filesystem Paths
# Count: 1000000
# Examples:
# - /bin/bash
# - /usr/bin/python3
# - /etc/hosts
# - /var/log/syslog
# - /usr/lib/gcc

# Define path components
ROOT_DIRS="bin|boot|cdrom|dev|etc|home|keybase|lib|lib32|lib64|libx32|lost\+found|media|mnt|opt|proc|root|run|sbin|snap|srv|sys|tmp|usr|var"
SUB_DIRS="bin|lib|\.local|xorg|log|include|share|local|cache"
COMMANDS="bash|python3|gcc|vim|nano|ls|cp|mv|rm|grep|awk|sed|ssh|systemctl|apt|dnf|yum"
CONFIG_FILES="Xorg|hosts|passwd|group|fstab|resolv\.conf|bashrc|profile"
LOGS="syslog|auth\.log|kern\.log|boot\.log"

exrex $* \
    "/?($ROOT_DIRS)/($SUB_DIRS)/(($COMMANDS|$CONFIG_FILES|$LOGS))?"