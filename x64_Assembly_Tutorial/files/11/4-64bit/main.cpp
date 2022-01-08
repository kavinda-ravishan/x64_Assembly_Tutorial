#include <iostream>

extern "C" uint64_t * ASMFunctionResult();
extern "C" uint64_t * ASMFunctionRemainder();

int main()
{
	std::cout << *(ASMFunctionResult())<< " " << *(ASMFunctionRemainder()) << std::endl;

	return 0;
}