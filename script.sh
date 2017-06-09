#!/bin/bash

echo $USER

mkdir -p example-api/build/libs/
touch example-api/build/libs/example-api.jar

echo contents of example-api
ls example-api

echo contents of example-api/build/libs
ls example-api/build/libs

echo contents of file version/version
cat version/version
