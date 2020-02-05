#include <iostream>
#include <stdio.h>

using namespace std;

int main() {

	for (int i = 0; i <= 10; i++) {
		for (int j = 0; j <= 10; j++) {
			cout << "r" << i << "c" << j << " ";
		}
		cout << endl;
	}

	return 0;
}
