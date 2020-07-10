package main

import (
    "fmt"
    "html"
    "log"
    "net/http"
    "os"
)

func main() {
    // Set Port
	port := "8080"
	if len(os.Args) > 1 {
		port = os.Args[1]
	}

	// Router
    http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
        fmt.Fprintf(w, "Hello, %q", html.EscapeString(r.URL.Path))
    })

    http.HandleFunc("/hi", func(w http.ResponseWriter, r *http.Request){
        fmt.Fprintf(w, "Hi")
    })

    // Run Server     
    log.Fatal(http.ListenAndServe(":"+port, nil))

}
