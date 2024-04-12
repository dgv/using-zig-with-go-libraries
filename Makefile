lib:
	go tool cgo -exportheader lib/lib.h lib/main.go &&\
	go build lib/main.go -o lib/lib.a &&\
	go build -buildmode=c-shared -o lib/lib.so

dynamic:
	clang main.c -LD lib/lib.so -o main_dynamic

static:
	clang main.c -I lib/ -L lib/lib.a -o main_static

all:
	lib
	dynamic
	static
