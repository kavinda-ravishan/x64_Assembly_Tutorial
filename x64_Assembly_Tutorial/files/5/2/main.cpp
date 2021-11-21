#include <iostream>

using namespace std;

extern "C" int64_t ASMfunction();

int main()
{

	cout << ASMfunction() << endl;

	return 0;
}