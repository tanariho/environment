#!/bin/bash
set -e

rm -f /app/tmp/pids/server.pid

bundle install
bundle exec rails db:migrate  
bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate

exec "$@"
