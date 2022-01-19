#include <intrin.h>
#include <iostream>

std::ostream& operator<<(std::ostream& ostr, const __m256d& reg)
{
	double* ptr = (double*)(&reg);

	ostr << "| ";
	for (int i = 0; i < (int)(sizeof(reg) / sizeof(double)); i++)
	{
		ostr << *(ptr + i) <<" | ";
	}
	ostr << std::endl;
	return ostr;
}

std::ostream& operator<<(std::ostream& ostr, const __m128i& reg)
{
	int32_t* ptr = (int32_t*)(&reg);
	
	ostr << "| ";
	for (int i = 0; i < (int)(sizeof(reg) / sizeof(int32_t)); i++)
	{
		ostr << *(ptr + i) << " | ";
	}
	ostr << std::endl;
	return ostr;
}

std::ostream& operator<<(std::ostream& ostr, const __m128& reg)
{
	float* ptr = (float*)(&reg);

	ostr << "| ";
	for (int i = 0; i < (int)(sizeof(reg) / sizeof(float)); i++)
	{
		ostr << *(ptr + i) << " | ";
	}
	ostr << std::endl;
	return ostr;
}

std::ostream& operator<<(std::ostream& ostr, const __m128d& reg)
{
	double* ptr = (double*)(&reg);

	ostr << "| ";
	for (int i = 0; i < (int)(sizeof(reg) / sizeof(double)); i++)
	{
		ostr << *(ptr + i) << " | ";
	}
	ostr << std::endl;
	return ostr;
}

extern "C" __m128i ASMfunction1();
extern "C" __m128i ASMfunction2();
extern "C" __m128 ASMfunction3();
extern "C" __m128 ASMfunction4();
extern "C" __m128 ASMfunction5();
extern "C" __m128 ASMfunction6();
extern "C" __m128d ASMfunction7();

void function1()
{
	__m256d a = { 0.0, 1.0, 2.0, 3.0 };
	__m256d b = { 2.0, 4.0, 6.0, 8.0 };
	__m256d c;

	c = _mm256_add_pd(a, b);

	std::cout << a << std::endl;
	std::cout << b << std::endl;
	std::cout << c << std::endl;
}

int main()
{
	function1();


	__m128i a = ASMfunction1();
	std::cout << a << std::endl;


	__m128i b = ASMfunction2();
	std::cout << b << std::endl;

	__m128 c = ASMfunction3();
	std::cout << c << std::endl;

	__m128 d = ASMfunction4();
	std::cout << d << std::endl;

	__m128 e = ASMfunction5();
	std::cout << e << std::endl;

	__m128 f = ASMfunction6();
	std::cout << f << std::endl;

	__m128d g = ASMfunction7();
	std::cout << g << std::endl;

	return 0;
}

