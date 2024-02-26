#!/bin/bash

yq --version > /dev/null
if[ $? -ne 0 ];then
    apt-get update
    apt -y install yq
fi

yq ".[].nombre" ejemplo.json > nombre.tmp
yq -r ".[].edad" ejemplo.json > edad.tmp

echo "nombre;edad" > persona.csv
paste -d ";" nombre.tmp edad.tmp >> persona.csv

rm nombre.tmp edad.tmp
