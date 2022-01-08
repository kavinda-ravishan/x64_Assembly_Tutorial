#include <iostream>

extern "C" uint16_t * ASMFunctionResult();
extern "C" unsigned char * ASMFunctionRemainder();

int main()
{
	std::cout << (int)*(ASMFunctionResult()) << " " << (int)*(ASMFunctionRemainder()) << std::endl;

	return 0;
}