#!/bin/sh

echo "Starting application..."
echo "Environment: $APP_ENV"
echo "Port: $APP_PORT"

exec "$@"
