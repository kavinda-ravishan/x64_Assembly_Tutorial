#include <iostream>

extern "C" uint64_t * ASMfunction1(unsigned long long var1, unsigned long long var2);
extern "C" uint64_t * ASMfunction2(unsigned long long var1, unsigned long long var2);
extern "C" void ASMfunction3(
	unsigned long long var1, 
	unsigned long long var2,
	unsigned long long* ptr1,
	unsigned long long* ptr2
);

extern "C" float ASMfunction4(float flt);

int main()
{
	std::cout << *ASMfunction1(123, 456) << std::endl;
	std::cout << *ASMfunction2(123, 456) << std::endl;

	unsigned long long var1, var2;
	ASMfunction3(123, 456, &var1, &var2);
	std::cout << var1 << std::endl;
	std::cout << var2 << std::endl;

	std::cout << ASMfunction4(123.123f) << std::endl;

	return 0;
}