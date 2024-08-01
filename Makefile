# You can change these variables if you want to use a different compiler or debugger
CC = clang
DBG = lldb

check:
	@which $(CC) > /dev/null && echo "SUCCESS: $(CC) is installed" || echo "ERROR: $(CC) not found, please install clang"
	@which $(DBG) > /dev/null && echo "SUCCESS: $(DBG) is installed" || echo "ERROR: $(DBG) not found, please install lldb"


build-dir:
	if [ ! -d build ]; then mkdir build; fi

default: build-dir
	$(CC) -Wall -O0 -g -o build/main src/main.c

run: default
	./build/main

test: build-dir
	$(CC) -O0 -g -o build/test src/test.c
	./build/test

debug: default
	$(DBG) ./build/main

debug-test: build-dir
	$(CC) -O0 -g -o build/test src/test.c
	$(DBG) ./build/test
