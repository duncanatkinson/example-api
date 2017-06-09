#!/bin/bash

echo $USER

mkdir -p build/libs/
touch build/libs/example-api.jar

echo contents of example-api
ls example-api

echo contents of build/libs
ls build/libs

echo contents of file version/version
cat version/version
