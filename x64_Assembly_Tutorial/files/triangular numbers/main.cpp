#include <iostream>

extern "C" uint64_t* ASMFunction();


int main()
{
	uint64_t* arr = ASMFunction();

	for (int i = 0; i < 100; i++)
	{
		std::cout << *(arr +i) << " | ";
	}

	return 0;
}