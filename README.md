# Toy C Project Template

A simple and beginner-friendly C project template designed for learning, experimentation, and small-scale development. This template provides a minimal structure for writing, testing, debugging, and running C programs without unnecessary complexity.

---

## Features

- Simple project structure
- Fast setup
- Unit testing support
- Easy debugging with LLDB
- Makefile automation
- Suitable for beginners and hobby projects

---

## Project Structure

```text
toy-c-project-template/
│
├── src/
│   ├── main.c
│   ├── lib.c
│   └── test.c
│
├── Makefile
├── README.md
└── .gitignore
```

### File Description

| File | Description |
|--------|-------------|
| main.c | Program entry point |
| lib.c | Main implementation logic |
| test.c | Unit tests |
| Makefile | Build, run, test and debug commands |
| README.md | Project documentation |

---

## Requirements

Before running the project, install:

### Ubuntu/Debian

```bash
sudo apt update
sudo apt install clang make lldb
```

### macOS

Required tools are usually pre-installed.

Verify installation:

```bash
clang --version
make --version
lldb --version
```

---

## Getting Started

Clone the repository:

```bash
git clone https://github.com/your-username/toy-c-project-template.git
cd toy-c-project-template
```

Or create a new project from the template:

```bash
mkdir my-c-project
cd my-c-project
```

---

## Available Commands

### Check Environment

```bash
make check
```

Verifies that all required tools are installed correctly.

---

### Build and Run

```bash
make run
```

Compiles and executes the application.

---

### Run Tests

```bash
make test
```

Runs all unit tests located in `test.c`.

---

### Debug Application

```bash
make debug
```

Starts LLDB debugger for the application.

---

### Debug Tests

```bash
make debug-test
```

Starts LLDB debugger for test execution.

---

## Development Workflow

Recommended workflow:

### Step 1

Write application logic inside:

```c
src/lib.c
```

Example:

```c
int add(int a, int b)
{
    return a + b;
}
```

### Step 2

Create tests inside:

```c
src/test.c
```

Example:

```c
ASSERT_EQ(add(2, 3), 5);
```

### Step 3

Use functions in:

```c
src/main.c
```

Example:

```c
printf("%d\n", add(2, 3));
```

### Step 4

Run tests:

```bash
make test
```

### Step 5

Run application:

```bash
make run
```

---

## Example Program

### lib.c

```c
int multiply(int a, int b)
{
    return a * b;
}
```

### main.c

```c
#include <stdio.h>

int multiply(int a, int b);

int main()
{
    printf("%d\n", multiply(5, 4));
    return 0;
}
```

Output:

```text
20
```

---

## Testing

Example test:

```c
ASSERT_EQ(10, multiply(5,2));
ASSERT_EQ(15, multiply(3,5));
```

Run:

```bash
make test
```

Expected Output:

```text
All tests passed.
```

---

## Debugging

Launch debugger:

```bash
make debug
```

Useful LLDB Commands:

```text
breakpoint set --name main
run
next
step
continue
quit
```

---

## Coding Guidelines

- Keep business logic inside `lib.c`
- Keep `main.c` minimal
- Write tests for every new function
- Use meaningful function names
- Follow consistent formatting
- Avoid global variables where possible

---

## Common Make Commands

| Command | Description |
|----------|-------------|
| make check | Verify dependencies |
| make run | Build and execute |
| make test | Run tests |
| make debug | Debug application |
| make debug-test | Debug tests |
| make clean | Remove generated files |

---

## Troubleshooting

### make: command not found

Install Make:

```bash
sudo apt install make
```

### clang: command not found

Install Clang:

```bash
sudo apt install clang
```

### lldb: command not found

Install LLDB:

```bash
sudo apt install lldb
```

---

## Future Improvements

- Modular source files
- Static library support
- Code coverage reports
- CI/CD integration
- GitHub Actions
- Advanced testing framework
- Documentation generation

---

## License

This project is available under the MIT License.

---

Built for learning, experimentation, and rapid C development.
