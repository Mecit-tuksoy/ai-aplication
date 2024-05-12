#!/bin/bash
# wait-for-it.sh

host="$1"
port="$2"
shift 2
cmd="$@"

echo "Waiting for $host:$port..."

while ! nc -z "$host" "$port"; do
  sleep 0.1
done

echo "Service is available!"

exec $cmd

#docker-compose dosyasında girilecek komut ile çalıştırılacak dosya