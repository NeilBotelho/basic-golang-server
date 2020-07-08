main: main.go
	GOOS=linux GOARCH=amd64 go build main.go
	mv main bin/
	@echo "web: ./bin/main $$PORT" >Procfile
	touch requirements.txt
