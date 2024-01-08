all: build build/debug

build/debug: build/debug.o
	g++ build/debug.o -o build/debug

build/debug.o: src/debug.cpp lib/node.h lib/linkedlist.h
	g++ -c src/debug.cpp -o build/debug.o

build:
	mkdir -p build

clean:
	rm -r build
