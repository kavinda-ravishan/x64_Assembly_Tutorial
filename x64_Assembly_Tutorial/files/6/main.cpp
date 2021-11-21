#include <iostream>

using namespace std;

extern "C" void* ASMAdd();
extern "C" void* ASMSub();
extern "C" void* ASMIncDec();

template<typename T>
T* getPtr(void* ptr)
{
	return (T*)ptr;
}

int main()
{
	void* ptradd = ASMAdd();
	cout << *getPtr<long long>(ptradd) << endl;
	void* ptrsub = ASMSub();
	cout << *getPtr<long long>(ptrsub) << endl;
	void* ptrincdec = ASMIncDec();
	cout << *getPtr<long long>(ptrincdec) << endl;


	return 0;
}