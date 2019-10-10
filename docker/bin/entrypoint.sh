#!/usr/bin/env sh
set -e

if [ ! -f /data/rails-girls/Gemfile ]; then
  gem install rails
  bundle config disable_platform_warnings true
  rails new . --database=postgresql
  rm config/database.yml && rake db:create
fi  

rm -f /data/rails-girls/tmp/pids/server.pid

exec "$@"
