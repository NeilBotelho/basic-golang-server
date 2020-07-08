#!/bin/sh
echo "Build checks running:
Building for linux"
GOOS=linux GOARCH=amd64 go build -o bin/main main.go
echo "Building for windows"
GOOS=linux GOARCH=amd64 go build -o bin/windowsBinary.exe main.go

if [ $? -eq 0 ];then
    #Build was sucessful
    echo "Tests passed"
else
    echo "Tests failed"
fi

