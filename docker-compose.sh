#!/bin/bash

set -a
dbname=${1}
set +a

envsubst < docker-compose.tmpl.yml | docker-compose -f - ${@:2}
