#include <stdio.h>
#include <assert.h>
#include <string.h>
#include "lib.c"

// Very small test helpers
int failed = 0;
#define TEST(name) void name()
#define RUN_TEST(name) printf("\n\033[1m%s\n\033[0m", #name); name()
#define ASSERT(expr) if (!(expr)) { \
  failed = 1; \
  printf("\033[0;31mFAIL: %s\n\033[0m", #expr); \
} else { \
  printf("\033[0;32mPASS: %s\n\033[0m", #expr); \
}
#define ASSERT_STR_EQ(str1, str2) if (!(strcmp(str1, str2) == 0)) { \
  failed = 1; \
  printf("\033[0;31mFAIL: %s != %s\n\033[0m", str1, str2); \
} else { \
  printf("\033[0;32mPASS: %s == %s\n\033[0m", str1, str2); \
}
// End of test helpers

TEST(test_add) {
  ASSERT(add(1, 2) == 3);
  ASSERT(add(0, 0) == 0);
  ASSERT(add(-1, -1) == -2);
}

TEST(test_string_assert) {
  ASSERT_STR_EQ("hello", "hello");
}

int main() {
  // Add a `RUN_TEST` line for each test function
  RUN_TEST(test_add);
  RUN_TEST(test_string_assert);
  return failed;
}
