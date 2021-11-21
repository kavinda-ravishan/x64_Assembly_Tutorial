#include <iostream>

using namespace std;

extern "C" long long ASMfunction();

int main()
{

	cout << ASMfunction() << endl;

	return 0;
}