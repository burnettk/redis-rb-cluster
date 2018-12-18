#!/bin/sh

if [ -z "$REDIS_RB_HOST" ]; then
  echo "ERROR: please specify REDIS_RB_HOST environment variable"
  exit 1
fi

if [ -z "$REDIS_RB_PORT" ]; then
  echo "INFO: you did not specify REDIS_RB_PORT environment variable. defaulting to 26379, the standard sentinel port"
  REDIS_RB_PORT=26379
fi

echo "Starting Redis test with start host $REDIS_RB_HOST at port $REDIS_RB_PORT"

exec ruby consistency-test.rb "$REDIS_RB_HOST" "$REDIS_RB_PORT"
