#!/usr/bin/env sh
set -e

if [ ! -f /data/rails-girls/Gemfile ]; then
  bundle config disable_platform_warnings true
  rails new . --database=postgresql
  rails webpacker:install
  rake db:create
fi  

rm -f /data/rails-girls/tmp/pids/server.pid

exec "$@"
