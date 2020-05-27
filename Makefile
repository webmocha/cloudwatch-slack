
all: build package clean

build:
	GOOS=linux GOARCH=amd64 go build -o main main.go

package:
	zip deployment.zip main

clean:
	rm main
