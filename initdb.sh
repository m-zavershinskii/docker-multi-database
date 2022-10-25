#!/bin/bash

set -a
dbname=${1}
mysql_port=${2}
set +a

mkdir -p ${dbname}/{data,log}
envsubst '${mysql_port}' < my.cnf.tmpl > ${dbname}/my.cnf

chown -R 999:999 ${dbname}/{data,log}
