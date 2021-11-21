#include <iostream>

extern "C" uint32_t ASMFunction();

void printBinary(uint32_t x)
{
	for (int s = 15; s >= 0; s--)
	{
		std::cout <<((x >> s) & 1);
		if (s % 4 == 0) std::cout << " ";
	}

	std::cout << std::endl;
}

int main()
{

	printBinary(ASMFunction());

	return 0;
}