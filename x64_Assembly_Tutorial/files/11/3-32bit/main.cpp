#include <iostream>

extern "C" uint32_t * ASMFunctionResult();
extern "C" uint32_t * ASMFunctionRemainder();

int main()
{
	std::cout << *(ASMFunctionResult())<< " " << *(ASMFunctionRemainder()) << std::endl;

	return 0;
}