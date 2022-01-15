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

class Entity
{
private:
	unsigned long long x{ 1234 };
public:
	void print()
	{
		std::cout << x << std::endl;
	}
};

extern "C" Entity* ASMfunction5(Entity & var);

extern "C" float ASMfunction6();
extern "C" double ASMfunction7();

int main()
{
	std::cout << *ASMfunction1(123, 456) << std::endl;
	std::cout << *ASMfunction2(123, 456) << std::endl;

	unsigned long long var1, var2;
	ASMfunction3(123, 456, &var1, &var2);
	std::cout << var1 << std::endl;
	std::cout << var2 << std::endl;

	std::cout << ASMfunction4(123.123f) << std::endl;


	Entity e;
	Entity *eptr= ASMfunction5(e);
	eptr->print();

	float fptr = ASMfunction6();
	std::cout << fptr << std::endl;

	double dptr = ASMfunction7();
	std::cout << dptr << std::endl;

	return 0;
}