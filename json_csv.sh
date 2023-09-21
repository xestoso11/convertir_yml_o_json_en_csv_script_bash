#!/bin/bash

jq --version > /dev/null
if[ $? -ne 0 ];then
    apt-get update
    apt -y install jq
fi

jq ".[].nombre" ejemplo.json > nombre.tmp
jq -r ".[].edad" ejemplo.json > edad.tmp

echo "nombre;edad" > persona.csv
paste -d ";" nombre.tmp edad.tmp >> persona.csv

rm nombre.tmp edad.tmp