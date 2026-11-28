# Compiler, debugger, and output binary name
CC      = clang
DBG     = lldb
TARGET  = my_project

# Compiler and linker flags
CFLAGS  = -std=c11 -Wall -Wextra -O0 -g -Iinclude
LDFLAGS =
LDLIBS  =

# Automatically pick up all .c files in src/ except test.c
SRCS    = $(filter-out src/test.c, $(wildcard src/*.c))

# --- External Dependencies (uncomment and edit as needed) ---
# Example 1: System library via pkg-config
# CFLAGS += $(shell pkg-config --cflags sqlite3)
# LDLIBS += $(shell pkg-config --libs sqlite3)

# Example 2: Local/vendored library in vendor/
# CFLAGS += -Ivendor/mylib
# SRCS   += vendor/mylib/mylib.c
# ------------------------------------------------------------

.PHONY: build-main
build-main: build-dir
	$(CC) $(CFLAGS) $(LDFLAGS) -o build/$(TARGET) $(SRCS) $(LDLIBS)

.PHONY: check
check:
	@which $(CC) > /dev/null && echo "SUCCESS: $(CC) is installed" || echo "ERROR: $(CC) not found, please install clang"
	@which $(DBG) > /dev/null && echo "SUCCESS: $(DBG) is installed" || echo "ERROR: $(DBG) not found, please install lldb"

.PHONY: build-dir
build-dir:
	if [ ! -d build ]; then mkdir build; fi

.PHONY: build-test
build-test: build-dir
	$(CC) $(CFLAGS) $(LDFLAGS) -o build/test src/test.c $(filter-out src/main.c, $(SRCS)) $(LDLIBS)

.PHONY: run
run: build-main
	./build/$(TARGET)

.PHONY: test
test: build-test
	./build/test

.PHONY: debug
debug: build-main
	$(DBG) ./build/$(TARGET)

.PHONY: debug-test
debug-test: build-test
	$(DBG) ./build/test