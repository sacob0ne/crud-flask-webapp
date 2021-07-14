#!/bin/bash
set -e

echo "Starting SSH ..."
service ssh start
  
host="$1"
shift
  
until telnet postgres 5432 | grep Connected; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 5
done

>&2 echo "Postgres is up - executing command"
exec "$@"

python /code/app.py