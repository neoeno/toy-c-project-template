# Toy C Project Template

This is a very simple template for a C project.

It prioritises having the fewest elements and easiest setup. As a result, it cuts
a few corners that you probably wouldn't want to cut in a professional C project.

But if you're using C as a learning or hobby tool, this should suit you well.

## Quickstart

You will need `make`, `clang` and `lldb` installed. 
These are present by default on macOS, and on Ubuntu can be installed with
`sudo apt install clang lldb`.

```shell
# Clone the repo, download a zip, or run...
; mkdir my-c-project && cd my-c-project
; npx degit neoeno/toy-c-project-template

# Check `make`, `clang` and `lldb` are installed
; make check

# To build and run `src/main.c`
; make run

# To run the tests in `src/test.c`
; make test

# To start `src/main.c` in the debugger
; make debug

# To start `src/test.c` in the debugger
; make debug-test
```

Note that a professional project would probably not use Make for all of these tasks.

## How to write code

The project is structured as three files:

* `src/main.c`, whose `main` function gets run as the executable, and should probably mostly call functions in `lib.c`.
* `src/lib.c` where most of your implementation code should go.
* `src/test.c`, whose `main` function gets run as the tests.

My suggested workflow is:

* Add functions to `lib.c`, verifying with tests in `test.c`.
* Add code to `main.c` which calls functions in `lib.c`.

There is already some example code along these lines.

## Tests

This project uses a very basic set of C macros to facilitate tests. You can see
examples of this in `src/test.c`.

My intention is that you use these tests just as a way to run bits of your code
in your development workflow.

You may want to experiment with creating more test macros that suit your project.
