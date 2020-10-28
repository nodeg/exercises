#include <iostream>

using namespace std;

int main()
{

    // Vorgabe
    int i = 5;
    int *pi, pj;
    char *pc, pd;
    int a = 0;

    pi = &a;
    pj = 0;
    pd = '0';

    // a) i is int, pi is *int
    // conversion from int to int* not allowed
    // pi = i;

    // b) i is type int not int*
    // should be &i
    // pi = *i;

    // c)
    *pi = i;
    cout << "int  *pi: " << *pi << endl;

    // d) i is not a pointer
    // *pi = &i;

    // e) pj is not a pointer but an int
    // pi = pj;

    // f)
    pc = &pd;
    cout << "char *pc: " << *pc << endl;

    // g) pi is an int*, pc is a char*
    // conversion from char* to int* not allowed
    // pi = pc;
    // cout << pc << endl;

    // h)
    pd = *pi;
    cout << "char pd: " << pd << endl;

    // i) multiplication of i with *pc
    *pi = i**pc;
    cout << "int  *pi: " << *pi << endl;

    // j)
    pi = 0;
    cout << "int  *pi: " << pi << endl;
}
