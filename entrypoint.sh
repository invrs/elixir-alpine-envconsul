#!/usr/bin/env sh

until ping -c 1 consul &> /dev/null
do
  echo "Consul not available yet, trying again soon..."
  sleep 1
done

echo "Consul ready, let's go"
exec envconsul -once -config /app/.envconsul.hcl "$@"
