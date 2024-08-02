# You can change these variables if you want to use a different compiler or debugger
CC = clang
DBG = lldb

build-main: build-dir
	$(CC) -Wall -O0 -g -o build/main src/main.c

check:
	@which $(CC) > /dev/null && echo "SUCCESS: $(CC) is installed" || echo "ERROR: $(CC) not found, please install clang"
	@which $(DBG) > /dev/null && echo "SUCCESS: $(DBG) is installed" || echo "ERROR: $(DBG) not found, please install lldb"

build-dir:
	if [ ! -d build ]; then mkdir build; fi

build-test: build-dir
	$(CC) -Wall -O0 -g -o build/test src/test.c

run: build-main
	./build/main

test: build-test
	./build/test

debug: build-main
	$(DBG) ./build/main

debug-test: build-test
	$(DBG) ./build/test
