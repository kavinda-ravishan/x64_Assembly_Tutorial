#include <iostream>

using namespace std;

extern "C" int ASMfunction();

int main()
{

	cout << "The resul : " << ASMfunction() << endl;

	return 0;
}