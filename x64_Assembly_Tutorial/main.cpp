#include <iostream>

struct Point
{
	uint64_t x, y;
};

extern "C" Point * ASMfunction1();
extern "C" void ASMfunction2(Point *pointPtr);


struct MyStruct
{
	char c;   // 48    (4 byte) - offset 0
	int i;    // 4C-4F (4 byte) - offset 4
	short s;  // 50-51 (8 byte) - offset 8
	double d; // 58-5F (8 byte) - offset 16
	// total - 24 byte
};

#pragma pack(1)
struct MyStructPacked
{
	char c;   
	int i;    
	short s;  
	double d; 
};

int main()
{
	Point* pointPtr = ASMfunction1();
	std::cout << pointPtr->x << std::endl;
	std::cout << pointPtr->y << std::endl;

	Point point;
	ASMfunction2(&point);
	std::cout << point.x << std::endl;
	std::cout << point.y << std::endl;

	MyStruct str;
	std::cout << &str << std::endl;
	std::cout << &(str.i) << std::endl;
	std::cout << &(str.s) << std::endl;
	std::cout << &(str.d) << std::endl;

	std::cout << sizeof(MyStruct) << std::endl;
	std::cout<<sizeof(MyStructPacked) << std::endl;

	return 0;
}