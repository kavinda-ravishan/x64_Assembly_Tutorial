#include <iostream>

extern "C" uint64_t* conditionalJumpsZ();


int main()
{
	for (int i = 0; i < 10; i++)
	{
		std::cout << *(conditionalJumpsZ()+i) << std::endl;
	}

	return 0;
}