#!/usr/bin/env sh
set -e

rm -f /data/rails-girls/tmp/pids/server.pid

exec "$@"