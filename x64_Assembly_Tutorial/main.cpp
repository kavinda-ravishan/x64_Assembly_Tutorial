#include <iostream>

extern "C" uint64_t ASMfunction1(uint64_t a, uint64_t b);
extern "C" uint64_t ASMfunction2(uint64_t a, uint64_t b);
uint64_t Cppfunction1(uint64_t a, uint64_t b)
{	
	return 1 ? a<b : 0;
}

extern "C" uint64_t ASMfunction3(uint64_t a, uint64_t b);
uint64_t Cppfunction3(uint64_t a, uint64_t b)
{
	return 1 ? (a == 10 && b == 20) : 0;
}

extern "C" void ASMfunction4(uint64_t * arr, uint64_t size);
void Cppfunction4(uint64_t* arr, uint64_t size)
{
	int i = 0;
	while (i < size)
	{
		*(arr + i) = i;
		i++;
	}
}

extern "C" void ASMfunction5(uint64_t * arr, uint64_t size);
void Cppfunction5(uint64_t* arr, uint64_t size)
{
	int i = 0;
	do 
	{
		*(arr + i) = i;
		i++;
	} while (i < size);
}

extern "C" void ASMfunction6(uint64_t * arr, uint64_t size);

void printArr(uint64_t* arr, uint64_t size)
{
	for (int i = 0; i < size; i++)
	{
		std::cout<<*(arr+i)<<" | ";
	}
	std::cout << std::endl;
}

int main()
{
	uint64_t a = 10;
	uint64_t b = 20;

	std::cout << ASMfunction1(a, b) << std::endl;
	std::cout << ASMfunction2(a, b) << std::endl;
	std::cout << Cppfunction1(a, b) << std::endl;

	std::cout << ASMfunction3(a, b) << std::endl;
	std::cout << Cppfunction3(a, b) << std::endl;

	const uint64_t size = 20;
	uint64_t arr1[size];
	uint64_t arr2[size];

	Cppfunction4(arr1, size);
	printArr(arr1, size);
	ASMfunction4(arr2, size);
	printArr(arr2, size);

	uint64_t arr3[size];
	uint64_t arr4[size];
	Cppfunction5(arr3, size);
	printArr(arr3, size);
	ASMfunction5(arr4, size);
	printArr(arr4, size);

	uint64_t arr5[size];
	ASMfunction6(arr5, size);
	printArr(arr5, size);

	return 0;
}