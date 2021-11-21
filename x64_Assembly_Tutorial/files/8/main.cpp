#include <iostream>

extern "C" uint64_t shiftTest(uint64_t & p);
extern "C" uint64_t shiftDoubleTest(uint64_t & p1, uint64_t & p2);

void printBits(int carry, uint64_t p, int bitCount)
{
	std::cout << "C : " << carry << " ";
	
	for (int s = bitCount - 1; s >= 0; s--)
	{
		std::cout <<((p >> s) & 1);
		if (s % 4 == 0) std::cout << " ";
	}
	std::cout << " | " << p << std::endl;
	std::cout << std::endl;
}

int main()
{
	uint64_t p1 = 4096;
	uint64_t p2 = 0b0010010001010101;
	int carry = 0;

	printBits(carry, p1, 64);
	printBits(carry, p2, 64);
	std::cin.get();

	while (true)
	{
		//carry = shiftTest(p1);
		shiftDoubleTest(p1, p2);

		printBits(carry, p1, 64);
		printBits(carry, p2, 64);

		std::cin.get();
	}

	return 0;
}