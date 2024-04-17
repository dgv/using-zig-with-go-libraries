all:
	go tool cgo -exportheader libgo.h libgo.go &&\
	go build -buildmode=c-shared -o libgo.so
	zig build-exe main.zig -I./ ./libgo.so

clear:
	rm -rf _obj main main.o libgo.so libgo.h
