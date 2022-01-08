#include <iostream>

extern "C" unsigned char * ASMFunctionResult();
extern "C" unsigned char * ASMFunctionRemainder();

int main()
{
	std::cout << (int)*(ASMFunctionResult()) << " " << (int)*(ASMFunctionRemainder()) << std::endl;

	return 0;
}