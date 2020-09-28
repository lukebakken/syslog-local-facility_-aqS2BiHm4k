#!/bin/sh

set -e

echo "[INFO] running syslog-ng in foreground, using directory: $PWD"

# syslog-ng --process-mode=foreground --debug --no-caps \
syslog-ng --process-mode=foreground --no-caps \
  --cfgfile="$PWD/syslog-ng.conf" \
  --persist-file="$PWD/syslog-ng.persist" \
  --pidfile="$PWD/syslog-ng.pid" \
  --control="$PWD/syslog-ng.ctl"
