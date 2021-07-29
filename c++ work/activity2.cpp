
#include "activity2.hpp"

#include <iostream>
using namespace std;
//allocated on static memory
char* str = “This is in Static memory.”;



int main(){
//allocated on stack
char * str2="stack memory";


//examples of static memory allocation
int a[10];
int x;
char c;
//Heap memory allocation
int * array=(int*)malloc(10*sizeof(int));
//malloc make dynamic alloction which is on heap memory
}
