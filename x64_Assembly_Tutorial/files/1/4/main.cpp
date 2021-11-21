#include <iostream>

using namespace std;

extern "C" int ASMfunction();

int main()
{

	cout << "The result : " << ASMfunction() << endl;

	return 0;
}