#include <iostream>

extern "C" uint64_t flagsFunction();

void printBits(uint64_t p, int bitCount)
{
	
	for (int s = bitCount - 1; s >= 0; s--)
	{
		std::cout <<((p >> s) & 1);
		if (s % 4 == 0) std::cout << " ";
	}
	std::cout << std::endl;
}

int main()
{
	printBits(flagsFunction(), 64);

	return 0;
}