package main

import (
	"encoding/json"
	"log"
	"net/http"
	"strconv"
	"time"
)

// HelloWorldRes .
type HelloWorldRes struct {
	Msg     string
	Time    int64
	Version int
}

func home(w http.ResponseWriter, r *http.Request) {
	header := w.Header()

	now := time.Now().Unix()
	res := HelloWorldRes{
		Msg:     "HomeEndpoint",
		Time:    now,
		Version: 1,
	}
	body, _ := json.Marshal(res)
	length := len(body)

	header.Set("Content-Type", "application/json")
	header.Set("Content-Length", strconv.Itoa(length))

	w.Write(body)
}

func main() {
	http.HandleFunc("/", home)
	log.Println("Starting Server...")
	http.ListenAndServe(":8080", nil)
}
