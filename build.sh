#!/bin/sh

GOOS=linux GOARCH=amd64 go build -o bin/main main.go
GOOS=linux GOARCH=amd64 go build -o bin/windowsBinary.exe main.go
