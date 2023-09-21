#!/bin/bash

yq --version > /dev/null
if[ $? -ne 0 ];then
    apt-get update
    apt -y install yq
fi