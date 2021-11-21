#include <iostream>

extern "C" uint64_t ASMFunction();

int main()
{

	std::cout << ASMFunction() << std::endl;

	return 0;
}