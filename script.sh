#!/bin/bash

echo $USER

ls -lart

cat version/version
ls example-api
mkdir -p example-api/build/libs/
touch example-api/build/libs/example-api.jar
ls example-api/build/libs
