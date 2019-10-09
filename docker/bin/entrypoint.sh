#!/usr/bin/env sh
set -e

if [ ! -f /data/rails-girls/Gemfile ]; then
  rails new . --database=postgresql
fi  

rm -f /data/rails-girls/tmp/pids/server.pid

exec "$@"
