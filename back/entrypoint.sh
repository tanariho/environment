#!/bin/bash
set -e

rm -f /app/tmp/pids/server.pid

bundle install
bundle exec bin/rails db:migrate  
bundle exec bin/rails assets:precompile
bundle exec bin/rails assets:clean
bundle exec bin/rails db:migrate

exec "$@"
