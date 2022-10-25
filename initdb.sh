#!/bin/bash

dbname=${1}

mkdir -p ${dbname}/{data,log}
cp my.cnf ${dbname}/
