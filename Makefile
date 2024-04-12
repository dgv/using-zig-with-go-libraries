lib:
	go tool cgo -exportheader lib/lib.h lib/lib.go &&\
	go build lib/lib.go -o lib/lib.a

clear:
	rm lib/lib.a lib/lib.h

all:
