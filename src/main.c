#include <stdio.h>
#include "lib.c"

int main()
{
  int result = add(40, 2);
  printf("40 + 2 = %d\n", result);
  int fib = fibonacci(10);
  printf("Fibonacci(10) = %d\n", fib);
  return 0;
}
