
#include <limits.h>

int add(int a, int b) {
    return a + b;
}

int fibonacci(int n) {
    if (n < 0) {
        return -1;
    }

    if (n == 0 || n == 1) {
        return n;
    }

    int previous = 0;
    int current = 1;

    for (int i = 2; i <= n; i++) {
        if (current > INT_MAX - previous) {
            return -1;
        }

        int next = previous + current;
        previous = current;
        current = next;
    }

    return current;
}
