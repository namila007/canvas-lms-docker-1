#!/usr/bin/env bash
HOST=$1
PORT=$2

for i in `seq 1 20`;
do
  nc -z $HOST $PORT && echo Success && exit 0
  echo -n .
  sleep 1
done
echo Failed waiting for $HOST $PORT && exit 1
