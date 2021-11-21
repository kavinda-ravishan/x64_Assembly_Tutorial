#include <iostream>

using namespace std;

extern "C" int ASMfunction();

int main()
{

	cout << ASMfunction() << endl;

	return 0;
}