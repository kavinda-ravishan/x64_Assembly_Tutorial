#include <iostream>

struct Point;
struct MyStruct;
struct MyStructPacked;
class MyClass;

extern "C" Point * ASMfunction1();
extern "C" void ASMfunction2(Point * pointPtr);
extern "C" MyStruct * ASMfunction3();
extern "C" MyClass * ASMfunction4(MyClass&);
extern "C" void ASMfunction5();

struct Point
{
	uint64_t x, y;
};

struct MyStruct
{
	char c;   // 48    (4 byte) - offset 0
	int i;    // 4C-4F (4 byte) - offset 4
	short s;  // 50-51 (8 byte) - offset 8
	double d; // 58-5F (8 byte) - offset 16
			  //       --------
			  // total- 24 byte
};

#pragma pack(1)
struct MyStructPacked
{
	char c;
	int i;
	short s;
	double d;
};

class MyClass
{
private:
	unsigned int val;
public:
	int GetVal() { return val; }
};

int main()
{
	Point* pointPtr = ASMfunction1();
	std::cout << pointPtr->x << std::endl;
	std::cout << pointPtr->y << std::endl;
	std::cout << std::endl;

	Point point;
	ASMfunction2(&point);
	std::cout << point.x << std::endl;
	std::cout << point.y << std::endl;
	std::cout << std::endl;

	// get offset
	std::cout << (int)&((MyStruct*)nullptr)->c << std::endl;
	std::cout << (int)&((MyStruct*)nullptr)->i << std::endl;
	std::cout << (int)&((MyStruct*)nullptr)->s << std::endl;
	std::cout << (int)&((MyStruct*)nullptr)->d << std::endl;
	std::cout << std::endl;

	std::cout << sizeof(MyStruct) << std::endl;
	std::cout << sizeof(MyStructPacked) << std::endl;
	std::cout << std::endl;

	MyStruct *mystr = ASMfunction3();
	mystr->c = 'a';
	mystr->s = 345;
	mystr->d = 123.456;

	std::cout << mystr->c << std::endl;
	std::cout << mystr->i << std::endl;
	std::cout << mystr->s << std::endl;
	std::cout << mystr->d << std::endl;
	std::cout << std::endl;
	
	MyClass myclass;
	ASMfunction4(myclass);
	std::cout<< myclass.GetVal() << std::endl;
	std::cout << std::endl;

	ASMfunction5();
	
	return 0;
}

