#!/usr/bin/env bash

# for p in {9051..9055}; do
for p in $(seq $MIN $MAX); do
	# echo "$p"
	# PORT=9051 RENEW=300 docker-compose --project-name 9051_tor up --build
	PORT=$p RENEW=${RENEW:-300} docker-compose --project-name ${p}_tor up --build -d & # do it asyncronously
done
wait # wait asyncronous process is done