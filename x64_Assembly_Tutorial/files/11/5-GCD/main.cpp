#include <iostream>

extern "C" uint64_t * GCD_ASM(unsigned int a, unsigned int b);

unsigned int GCD(unsigned int a, unsigned int b)
{
    if (a == 0 || b == 0)
        return 0;

	int temp = 0;
	while (b != 0)
	{
		temp = b;
		b = a % b;
		a = temp;
	}

	return a;
}

int main()
{
	std::cout << GCD(57*59, 57*78) << std::endl;
	std::cout << *(GCD_ASM(57*59, 57*78)) << std::endl;

	return 0;
}