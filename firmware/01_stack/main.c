#include <stdio.h>
#include <stdint.h>

static void inner(int x) {
    int inner_local = x;
    printf("  inner(): &inner_local = %p\n", (void*)&inner_local);
}

static void foo(int a, int b, int c) {
    // 3 local variables
    int l1 = a + 1;
    int l2 = b + 2;
    int l3 = c + 3;

    // addresses of arguments
    printf("foo(): &a=%p &b=%p &c=%p\n", (void*)&a, (void*)&b, (void*)&c);

    // addresses of locals
    printf("foo(): &l1=%p &l2=%p &l3=%p\n", (void*)&l1, (void*)&l2, (void*)&l3);

    // nested function call
    inner(l1 + l2 + l3);
}

int main(void) {
    foo(10, 20, 30);
    return 0;
}
