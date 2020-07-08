#!/bin/sh
echo "Build checks running:
Building for linux"
GOOS=linux GOARCH=amd64 go build -o /tmp/linuxCompile

if [ $? -eq 0 ];then
    #Build was sucessful
    echo "Tests passed"
else
    echo "Tests failed"
fi
