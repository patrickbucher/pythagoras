package main

import (
	"log"
	"math"
	"net/http"
	"strconv"
)

func main() {
	http.HandleFunc("/canary", canary)
	http.HandleFunc("/pythagoras", pythagoras)
	log.Fatal(http.ListenAndServe("0.0.0.0:9999", nil))
}

func canary(w http.ResponseWriter, r *http.Request) {
	w.Write([]byte("beep, beep\n"))
}

func pythagoras(w http.ResponseWriter, r *http.Request) {
	a, err := strconv.ParseFloat(r.FormValue("a"), 32)
	if err != nil {
		w.WriteHeader(http.StatusBadRequest)
		return
	}
	b, err := strconv.ParseFloat(r.FormValue("b"), 32)
	if err != nil {
		w.WriteHeader(http.StatusBadRequest)
		return
	}
	c := math.Sqrt(a*a + b*b)
	w.Write([]byte(strconv.FormatFloat(c, 'f', -1, 32) + "\n"))
}
