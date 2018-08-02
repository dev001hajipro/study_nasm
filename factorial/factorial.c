/*
 * 階乗のアセンブラを確認するために書いたコード
 * $ gcc -g factorial.c -o factorial && ./factorial 
 */

#include <stdio.h>

int factorial(int n) {
    return n <= 1 ? 1 : n * factorial(n-1);
}

int main(int argc, char*argv[]) {
    int ret = factorial(5);
    printf("result=%d\n", ret);
    return 0;
}
