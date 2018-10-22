#!/usr/bin/env bash

show_usage () {
    echo "Usage: entrypoint.sh <service_type>"
}

case "$1" in
  webserver)
    airflow initdb
    exec airflow webserver
    ;;
  scheduler)
    # To give the webserver time to run initdb
    sleep 10
    exec aiflow "$@"
    ;;
  *)
    exec "$@"
    ;;
esac
