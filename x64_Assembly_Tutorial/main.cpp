#include <iostream>

extern "C" uint64_t* ASMFunction();


int main()
{
	for (int i = 0; i < 100; i++)
	{
		std::cout << *(ASMFunction()+i) << " | ";
	}

	return 0;
}