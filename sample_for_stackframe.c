#include <stdio.h>

// gdbでスタックスフレームを確認するために書いたコード
//
// *参考資料
//   スタックセグメントを確認してみる
//     http://blog.kenkov.jp/2013/07/25/assembly.html

void func(int a, int b, int c, int d) {
	int flag;
	char buffer[10];
	flag = 6;
	printf("%d\n", a + b + c + d);
}

int main(int argc, char *argv[]) {
	func(0, 1, 2, 3);
	return 0;
}
